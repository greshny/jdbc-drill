warn 'jdbc-drill is only for use with JRuby' if (JRUBY_VERSION.nil? rescue true)

module Jdbc
  module Drill
    DRIVER_VERSION = '0.11.0'
    VERSION = DRIVER_VERSION + '.1'

    def self.driver_jar
      %W(
        driver/drill-jdbc-all-1.3.0-SNAPSHOT.jar
      )
    end

    def self.load_driver(method = :load)
      driver_jar.each do |jar|
        send method, jar
      end
    end

    def self.driver_name
      'org.apache.drill.jdbc.Driver'
    end

    if defined?(JRUBY_VERSION) && # enable backwards-compat behavior
      (Java::JavaLang::Boolean.get_boolean('jdbc.driver.autoload'))
      warn "autoloading jdbc driver on require 'jdbc/drill'" if $VERBOSE
      load_driver :require
    end
  end
end
