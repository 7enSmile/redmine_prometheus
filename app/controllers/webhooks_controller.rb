class WebhooksController < ApplicationController
skip_before_action :verify_authenticity_token
	def init
		data = JSON.parse(request.body.read)
		issue = Issue.new
		issue.project = Project.find_by_id(Setting.plugin_redmine_prometheus[:project])
		issue.assigned_to = User.find_by_id(Setting.plugin_redmine_prometheus[:user_assignee])
		issue.subject = "#{data["alerts"][0]["status"]} #{data["alerts"][0]["startsAt"][11, 8]}"
		issue.description = "Grafana alert. #{data["alerts"][0]["annotations"]["summary"]}"
		issue.status = IssueStatus.find_by_name("New")
		issue.priority = IssuePriority.find_by_name("Normal")
		issue.author = User.find_by_id(1)
		issue.tracker = Tracker.find_by_name("Support")
		issue.start_date = data["alerts"][0]["startsAt"][0, 10]

		issue.save
	end
end
