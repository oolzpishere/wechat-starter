# namespace :deploy do
#   desc 'Runs any rake task, cap deploy:rake task=db:rollback'
#   task rake: [:set_rails_env] do
#     on release_roles([:all]) do
#       within release_path do
#         with rails_env: fetch(:rails_env) do
#           execute :rake, ENV['task'], "RAILS_ENV=production assets:precompile"
#         end
#       end
#     end
#   end
# end
