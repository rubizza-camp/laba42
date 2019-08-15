# frozen_string_literal: true

class HomeController < ApplicationController
  before_action :unfilled_rol, only: [:index]

  def index; end

  def unfilled_rol
    redirect_to_select if current_user
  end

  private

  def redirect_to_select
    redirect_to '/select_role' unless current_user.role
  end
end
