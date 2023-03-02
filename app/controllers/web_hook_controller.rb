
class WebHookController < ApplicationController
  def init
    File.write('lib/file.rb', 'test')
  end
end
