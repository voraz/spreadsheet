require 'spreadsheet/excel/offset'
require 'spreadsheet/excel/row'
require 'spreadsheet/worksheet'

module Spreadsheet
  module Excel
##
# Excel-specific Worksheet methods. These are mostly pertinent to the Excel
# reader, and to recording changes to the Worksheet. You should have no reason
# to use any of these.
class Worksheet < Spreadsheet::Worksheet
  include Spreadsheet::Excel::Offset
  offset :dimensions
  attr_reader :offset, :ole
  def initialize opts = {}
    super
    @offset, @ole, @reader = opts[:offset], opts[:ole], opts[:reader]
    @dimensions = nil
  end
  def column idx
    ensure_rows_read
    super
  end
  def date_base
    @workbook.date_base
  end
  def each *args
    ensure_rows_read
    super
  end
  def ensure_rows_read
    return if @row_addresses
    @dimensions = nil
    @row_addresses = []
    @reader.read_worksheet self, @offset
  end
  def row idx
    ensure_rows_read
    @rows.fetch idx do
      if addr = @row_addresses[idx]
        row = @reader.read_row self, addr
        row.default_format = addr[:default_format]
        row.worksheet = self
        row
      else
        Row.new self, idx
      end
    end
  end
  def row_updated idx, row
    res = super
    @workbook.changes.store self, true
    @workbook.changes.store :boundsheets, true
    @changes.store idx, true
    @changes.store :dimensions, true
    res
  end
  def set_row_address idx, opts
    @offsets.store idx, opts[:row_block]
    @row_addresses[idx] = opts
  end
  def shared_string idx
    @workbook.shared_string idx
  end
  private
  ## premature optimization?
  def have_set_dimensions value, pos, len
    if @row_addresses.size < row_count
      @row_addresses.concat Array.new(row_count - @row_addresses.size)
    end
  end
  def recalculate_dimensions
    ensure_rows_read
    shorten @rows
    @dimensions = []
    @dimensions[0] = [ index_of_first(@rows),
                       index_of_first(@row_addresses) ].compact.min
    @dimensions[1] = [ @rows.size, @row_addresses.size ].compact.max
    compact = @rows.compact
    first_rows = compact.collect do |row| index_of_first row end.compact.min
    first_addrs = @row_addresses.compact.collect do |addr|
      addr[:first_used] end.min
    @dimensions[2] = [ first_rows, first_addrs ].compact.min
    last_rows = compact.collect do |row| row.size end.max
    last_addrs = @row_addresses.compact.collect do |addr|
      addr[:first_unused] end.max
    @dimensions[3] = [last_rows, last_addrs].compact.max
    @dimensions
  end
end
  end
end