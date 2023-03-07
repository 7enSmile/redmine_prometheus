class SettingsController < ApplicationController
  unloadable

  def update
    @settings = Setting.plugin_redmine_prometheus
    @settings['user'] = params[:user]
    @settings['project'] = params[:project]
    if request.post? && @settings.save
      flash[:notice] = l(:notice_successful_update)
    end
    redirect_to :action => 'plugin', :id => 'redmine_prometheus'
  end
end
