class SettingsController < ApplicationController
  unloadable
  def update
    @settings = Setting.plugin_redmine_prometheus
    @settings['user'] = "123"
    @settings['project'] = "123"
    @settings.save

  end
end
