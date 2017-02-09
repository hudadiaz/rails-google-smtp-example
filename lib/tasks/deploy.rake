namespace :deploy do
  desc "Migrate the database (options: VERSION=x, VERBOSE=false, SCOPE=blog)."
  task migrate: [:environment, :load_config] do
    ActiveRecord::Tasks::DatabaseTasks.migrate
    db_namespace["_dump"].invoke
  end
end
