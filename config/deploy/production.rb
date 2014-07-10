set :stage, :production

# Server
# ======================
set :rvm_type, :system
set :host, "store.ymme.info"

# App
#========================
set :scm, :git
set :branch, "master"
set :repo_url, 'git@github.com:nles/store.git'
set :deploy_to, "/var/www/rails/#{fetch(:application)}"

# Roles
#========================
role :app, fetch(:host)
role :web, fetch(:host)
role :db, fetch(:host), :primary => true

# serve
server fetch(:host), roles: [:web], user: 'deploy'
