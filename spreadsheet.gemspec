# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spreadsheet}
  s.version = "0.6.5.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Masaomi Hatakeyama", "Zeno R.R. Davatz"]
  s.date = %q{2011-09-03}
  s.default_executable = %q{xlsopcodes}
  s.description = %q{As of version 0.6.0, only Microsoft Excel compatible spreadsheets are supported}
  s.email = %q{mhatakeyama@ywesee.com, zdavatz@ywesee.com}
  s.executables = ["xlsopcodes"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.txt"
  ]
  s.files = [
    "GUIDE.txt",
    "History.txt",
    "LICENSE.txt",
    "Manifest.txt",
    "README.txt",
    "bin/xlsopcodes",
    "lib/parseexcel.rb",
    "lib/parseexcel/parseexcel.rb",
    "lib/parseexcel/parser.rb",
    "lib/spreadsheet.rb",
    "lib/spreadsheet/column.rb",
    "lib/spreadsheet/compatibility.rb",
    "lib/spreadsheet/datatypes.rb",
    "lib/spreadsheet/encodings.rb",
    "lib/spreadsheet/excel.rb",
    "lib/spreadsheet/excel/error.rb",
    "lib/spreadsheet/excel/internals.rb",
    "lib/spreadsheet/excel/internals/biff5.rb",
    "lib/spreadsheet/excel/internals/biff8.rb",
    "lib/spreadsheet/excel/offset.rb",
    "lib/spreadsheet/excel/reader.rb",
    "lib/spreadsheet/excel/reader/biff5.rb",
    "lib/spreadsheet/excel/reader/biff8.rb",
    "lib/spreadsheet/excel/row.rb",
    "lib/spreadsheet/excel/sst_entry.rb",
    "lib/spreadsheet/excel/workbook.rb",
    "lib/spreadsheet/excel/worksheet.rb",
    "lib/spreadsheet/excel/writer.rb",
    "lib/spreadsheet/excel/writer/biff8.rb",
    "lib/spreadsheet/excel/writer/format.rb",
    "lib/spreadsheet/excel/writer/workbook.rb",
    "lib/spreadsheet/excel/writer/worksheet.rb",
    "lib/spreadsheet/font.rb",
    "lib/spreadsheet/format.rb",
    "lib/spreadsheet/formula.rb",
    "lib/spreadsheet/helpers.rb",
    "lib/spreadsheet/link.rb",
    "lib/spreadsheet/row.rb",
    "lib/spreadsheet/version.rb",
    "lib/spreadsheet/workbook.rb",
    "lib/spreadsheet/worksheet.rb",
    "lib/spreadsheet/writer.rb",
    "test/data/test_changes.xls",
    "test/data/test_copy.xls",
    "test/data/test_datetime.xls",
    "test/data/test_empty.xls",
    "test/data/test_formula.xls",
    "test/data/test_long_sst_record.xls",
    "test/data/test_missing_row.xls",
    "test/data/test_version_excel5.xls",
    "test/data/test_version_excel95.xls",
    "test/data/test_version_excel97.xls",
    "test/excel/row.rb",
    "test/excel/writer/worksheet.rb",
    "test/font.rb",
    "test/integration.rb",
    "test/row.rb",
    "test/suite.rb",
    "test/workbook.rb",
    "test/worksheet.rb"
  ]
  s.homepage = %q{http://scm.ywesee.com/?p=spreadsheet/.git;a=summary}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{The Spreadsheet Library is designed to read and write Spreadsheet Documents}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ruby-ole>, ["~> 1.2"])
      s.add_development_dependency(%q<rake>, ["~> 0.9"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.0"])
      s.add_development_dependency(%q<rdoc>, ["~> 2.4"])
    else
      s.add_dependency(%q<ruby-ole>, ["~> 1.2"])
      s.add_dependency(%q<rake>, ["~> 0.9"])
      s.add_dependency(%q<jeweler>, ["~> 1.0"])
      s.add_dependency(%q<rdoc>, ["~> 2.4"])
    end
  else
    s.add_dependency(%q<ruby-ole>, ["~> 1.2"])
    s.add_dependency(%q<rake>, ["~> 0.9"])
    s.add_dependency(%q<jeweler>, ["~> 1.0"])
    s.add_dependency(%q<rdoc>, ["~> 2.4"])
  end
end

