module Dotenv
  class Railtie < Rails::Railtie
    rake_tasks do
      load "dotenv/tasks.rb"
    end

    initializer 'dotenv', :group => :all do
      Dotenv.load
    end
  end
end