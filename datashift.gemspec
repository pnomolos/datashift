require 'rake'

#TODO version = File.read("VERSION").strip

Gem::Specification.new do |s|
  s.name = "datashift"
  s.version = "0.16.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=

  s.authors = ["Thomas Statter"]

  s.description = "Comprehensive import/export tools between Excel/CSV & ActiveRecord Databases, Rails apps, and any Ruby project."
  s.email = "rubygems@autotelik.co.uk"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.markdown",
    "README.rdoc"
  ]

  s.test_files = FileList["{spec}/*"]

  s.files = FileList[
    "LICENSE.txt",
    "README.markdown",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "datashift.gemspec",
    "tasks/config/seed_fu_product_template.erb",
    "tasks/config/tidy_config.txt",
    "tasks/db_tasks.rake",
    "tasks/file_tasks.rake",
    "tasks/word_to_seedfu.rake",
    "{lib}/**/*"].exclude("rdoc").exclude("nbproject").exclude("fixtures").exclude(".log").exclude(".contrib").to_a

  s.homepage = "http://github.com/autotelik/datashift"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]

  s.summary = "Shift data betwen Excel/CSV and any Ruby app"

  if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    s.add_runtime_dependency 'rubyzip', '~> 1.1', '>= 1.1.6'
    s.add_runtime_dependency 'spreadsheet', '0.9'
  else
    s.add_dependency(%q<spreadsheet>, ["0.9.0"])
    s.add_dependency(%q<rubyzip>, [">= 1.1.6"])
  end

end

