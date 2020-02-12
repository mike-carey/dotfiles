#!/usr/bin/env ruby

require 'yaml'

DEFAULT_INSTALL = 'https://raw.githubusercontent.com/Homebrew/install/master/install'
DEFAULT_APP_DIR = '/Applications'

MAS = 'mas'
BREW = 'brew'

class Config
  attr_accessor :apps, :app_dir, :casks, :cask_apps, :app_store_apps

  def initialize config
    @install = config.fetch('install', DEFAULT_INSTALL)
    @app_dir = config.fetch('app_dir', DEFAULT_APP_DIR)
    @apps = config.fetch('apps', []).concat([MAS])
    @casks = config.fetch('casks', [])
    @cask_apps = config.fetch('cask_apps', [])
    @app_store_apps = config.fetch('app_store_apps', [])
  end

  def install_brew
    "hash %s || /usr/bin/ruby -e \"$(curl -fsSL %s)\"" % [BREW, @install]
  end

  def update
    "%s update" % [BREW]
  end

  def tap_casks
    a = []
    @casks.each do |cask|
      a.append "%s tap %s" % [BREW, cask]
    end
    a
  end

  def install_apps
    a = []
    @apps.each do |app|
      a.append "%s install %s" % [BREW, app]
    end
    a
  end

  def install_cask_apps
    a = []
    @cask_apps.each do |app|
      a.append "%s cask install --appdir=\"%s\" %s" % [BREW, @app_dir, app]
    end
    a
  end

  def mas_upgrade
    "%s upgrade" % [MAS]
  end

  def install_app_store_apps
    a = []
    @app_store_apps.each do |app|
      a.append "%s install %s" % [MAS, app]
    end
    a
  end

  def cleanup
    "%s cleanup" % [BREW]
  end

  def all
    a = []

    a.append install_brew
    a.append update

    a.concat tap_casks
    a.concat install_cask_apps

    a.append mas_upgrade
    a.concat install_app_store_apps

    a.append cleanup

    return a
  end
end

if ARGV.length < 1
  $stderr.puts "Usage: #{$0} CONFIG_FILE"
  exit 1
end

c = Config.new YAML.load_file ARGV[0]
c.all.each do |l|
  $stderr.puts l
  puts l
end
