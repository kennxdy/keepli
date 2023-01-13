require 'pagy/extras/bootstrap'

class ApplicationController < ActionController::Base
  include Pagy::Backend
  before_action :set_variables

  def set_variables
    @sidebar_collections = Collection.all
  end
end
