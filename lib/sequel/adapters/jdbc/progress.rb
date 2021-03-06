Sequel.require 'adapters/shared/progress'
Sequel.require 'adapters/jdbc/transactions'

module Sequel
  module JDBC
    # Database and Dataset instance methods for Progress v9 specific
    # support via JDBC.
    module Progress
      # Database instance methods for Progress databases accessed via JDBC.
      module DatabaseMethods
        include Sequel::Progress::DatabaseMethods
        include Sequel::JDBC::Transactions

        # Progress DatabaseMetaData doesn't even implement supportsSavepoints()
        def supports_savepoints?
          false
        end
      end
    end
  end
end
