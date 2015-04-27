# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'Sphere CRM'
set :repo_url, 'git@github.com:spheregenomics/sphere_crm.git'

# describe the rbenv environment we are deploying into
set :rbenv_type, :user
set :rbenv_ruby, '2.2.2'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:app), in: :sequence, wait: 5 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
  
  after :publishing, :restart
  
  after :restart, :clear_cache do
     on roles(:web), in: :groups, limit: 3, wait: 10 do
           # Here we can do anything such as:
           # within release_path do
           #   execute :rake, 'cache:clear'
           # end
         end
       end     

end
