class SettingsController < ApplicationController
  unloadable
  def update
    @settings = Setting.plugin_redmine_prometheus
    @settings['user'] = params[:user]
    @settings['project'] = params[:project]
    @settings.save

  end
end
