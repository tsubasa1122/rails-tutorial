class ApplicationController < ActionController::Base
  include SessionsHelper
  def hello
  render html: "helloπ"
  end
end
