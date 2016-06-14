class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  respond_to :json

  # before_action :set_headers
  #
  # private
  #
  #   def set_headers
  #     if origin
  #       allowed = ['trip.org']
  #       allowed.each do |host|
  #         if origin.match /^https?:\/\/#{Regexp.escape(host)}/i
  #           headers['Access-Control-Allow-Origin'] = origin
  #         end
  #       end
  #
  #       headers['Access-Control-Allow-Methods'] = 'GET, OPTIONS'
  #       headers['Access-Control-Request-Method'] = '*'
  #       headers['Access-Control-Allow-Headers'] = 'Content-Type'
  #     end
  #   end
  #
  #   def origin
  #     @origin ||= request.headers['HTTP_ORIGIN']
  #   end
  #

end
