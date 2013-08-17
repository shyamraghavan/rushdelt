set :application, "rushdelt"
set :repository,  "https://github.com/srir/rushdelt.git"

set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

ssh_options[:user] = "delt"
ssh_options[:keys] = ["#{ENV['HOME']}/.ssh/delt"]

server "rushdelt.org", :app, :web, primary: true
set :use_sudo, false
set :deploy_to, "/var/www/delt/rushdelt"
