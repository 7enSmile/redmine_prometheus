
class WebHookController < ApplicationController
  def init
    File.write('/', 'test')
  end
end
