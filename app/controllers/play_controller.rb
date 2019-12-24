class PlayController < ApplicationController
  def index
    @id = params['id']
  end
  def home
    redirect_to(
      :controller => 'another', 
      :action => 'index')
  end
  def house
    redirect_to(
      :action => 'index')
  end
  def google
    redirect_to('https://google.com')
  end
end
