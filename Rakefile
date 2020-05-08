require "bundler/gem_tasks"
require "rspec/core/rake_task"

# lib/Rakefile
require 'magedocs_helper'

path = File.expand_path(__dir__)
Dir.glob("#{path}/lib/**/*.rake").each { |f| import f }

RSpec::Core::RakeTask.new(:spec)

task :default => :spec
