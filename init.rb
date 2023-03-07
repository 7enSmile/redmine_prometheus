Redmine::Plugin.register :redmine_prometheus do
  name 'Redmine Prometheus integration plugin'
  author 'Semen Pankratov'
  description 'This is a plugin for Redmine integration witch prometheus'
  version '0.0.0'
  url 'https://github.com/7enSmile/redmine_prometheus'
  author_url 'http://example.com/about'
  settings :partial => 'settings/settings'
end
