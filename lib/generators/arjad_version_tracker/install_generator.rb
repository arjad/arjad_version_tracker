require 'rails/generators/base'
require 'rails/generators/migration'

module ArjadVersionTracker
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration
      source_root File.expand_path('templates', __dir__)

      argument :migration_name, type: :string, default: "add_previous_version_to_table"

      def create_migration
        migration_template 'migration.rb', "db/migrate/#{migration_timestamp}_#{migration_file_name}.rb"
      end

      def self.next_migration_number(dir)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      private

      def migration_timestamp
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end

      def migration_file_name
        migration_name.underscore
      end
    end
  end
end
