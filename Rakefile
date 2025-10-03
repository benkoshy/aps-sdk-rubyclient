# frozen_string_literal: true

require "bundler/gem_tasks"
require "rubocop/rake_task"

require "rake/testtask"

Rake::TestTask.new do |task|
  task.libs << "test"
  task.libs << "lib"
  task.warning = false
  task.test_files = ["test/**/*_test.rb"]
end

RuboCop::RakeTask.new
task default: :rubocop