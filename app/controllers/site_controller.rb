# frozen_string_literal: true

class SiteController < ApplicationController
  def index; end
  def ok_page; end

  def not_found_page
    render 'not_found_page', status: :not_found
  end

  def internal_server_error_page
    render status: :internal_server_error
  end
end
