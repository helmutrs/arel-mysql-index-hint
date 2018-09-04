# -*- encoding: utf-8 -*-
# stub: arel-mysql-index-hint 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "arel-mysql-index-hint".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Genki Sugawara".freeze]
  s.date = "2018-05-26"
  s.description = "Add index hint to MySQL query in Arel.".freeze
  s.email = ["sgwr_dts@yahoo.co.jp".freeze]
  s.files = [".gitignore".freeze, ".rspec".freeze, ".travis.yml".freeze, "Appraisals".freeze, "Gemfile".freeze, "LICENSE.txt".freeze, "README.md".freeze, "Rakefile".freeze, "arel-mysql-index-hint.gemspec".freeze, "docker-compose.yml".freeze, "gemfiles/activerecord_4.0.gemfile".freeze, "gemfiles/activerecord_4.1.gemfile".freeze, "gemfiles/activerecord_4.2.gemfile".freeze, "gemfiles/activerecord_5.0.gemfile".freeze, "lib/arel-mysql-index-hint.rb".freeze, "lib/arel-mysql-index-hint/active_record-hint_methods.rb".freeze, "lib/arel-mysql-index-hint/arel-table.rb".freeze, "lib/arel-mysql-index-hint/arel-visitors-mysql.rb".freeze, "lib/arel-mysql-index-hint/version.rb".freeze, "spec/arel-mysql-index-hint/eager_load_spec.rb".freeze, "spec/arel-mysql-index-hint/includes_spec.rb".freeze, "spec/arel-mysql-index-hint/joins_spec.rb".freeze, "spec/arel-mysql-index-hint/preload_spec.rb".freeze, "spec/arel-mysql-index-hint/unnested_hint_spec.rb".freeze, "spec/arel-mysql-index-hint/without_join_spec.rb".freeze, "spec/init.sql".freeze, "spec/models.rb".freeze, "spec/spec_helper.rb".freeze]
  s.homepage = "https://github.com/winebarrel/arel-mysql-index-hint".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Add index hint to MySQL query in Arel.".freeze
  s.test_files = ["spec/arel-mysql-index-hint/eager_load_spec.rb".freeze, "spec/arel-mysql-index-hint/includes_spec.rb".freeze, "spec/arel-mysql-index-hint/joins_spec.rb".freeze, "spec/arel-mysql-index-hint/preload_spec.rb".freeze, "spec/arel-mysql-index-hint/unnested_hint_spec.rb".freeze, "spec/arel-mysql-index-hint/without_join_spec.rb".freeze, "spec/init.sql".freeze, "spec/models.rb".freeze, "spec/spec_helper.rb".freeze]

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
      s.add_runtime_dependency(%q<arel>.freeze, [">= 4.0.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, [">= 3.0.0"])
      s.add_development_dependency(%q<factory_girl>.freeze, [">= 0"])
      s.add_development_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<arel>.freeze, [">= 4.0.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<mysql2>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, [">= 3.0.0"])
      s.add_dependency(%q<factory_girl>.freeze, [">= 0"])
      s.add_dependency(%q<coveralls>.freeze, [">= 0"])
      s.add_dependency(%q<appraisal>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<arel>.freeze, [">= 4.0.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<mysql2>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<factory_girl>.freeze, [">= 0"])
    s.add_dependency(%q<coveralls>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
  end
end
