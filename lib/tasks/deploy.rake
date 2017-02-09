namespace :deploy do
  desc "Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
  task :migrate do
    ActiveRecord::Tasks::DatabaseTasks.migrate
  end
end

Rake::Task['deploy:migrate'].invoke