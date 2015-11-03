Gem::Specification.new do |s|
  s.name        = 'jdbc-drill'
  s.version     = '0.11.0.1'
  s.authors     = ['Martin Senne']
  s.email       = %w(martin@contiamo.com)
  s.homepage    = 'https://github.com/Contiamo/jdbc-drill'
  s.summary     = %q{Drill JDBC driver for JRuby}
  s.description = %q{Use this driver to connect to Apache Drill}

  s.rubyforge_project = 'jdbc-drill'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

  s.add_development_dependency 'sequel'
end
