module Partybus

  def self.config
    @config ||= Config.new
  end

  def self.configure(&block)
    yield(config)
  end

  class Config

    attr_accessor :database_connection_string
    attr_accessor :database_migration_directory
    attr_accessor :partybus_migration_directory
    attr_accessor :migration_state_file

  end

end
