# frozen_string_literal: true

class Managers::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /warehouses/sign_up
  # def new
  #   super
  # end

  # POST /warehouses
  # def create
  #   super
  # end

  # GET /warehouses/edit
  # def edit
  #   super
  # end

  # PUT /warehouses
  # def update
  #   super
  # end

  # DELETE /warehouses
  # def destroy
  #   super
  # end

  # GET /warehouses/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(warehouses)
  #   super(warehouses)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(warehouses)
  #   super(warehouses)
  # end

  protected

  def after_sign_in_path_for(resource)
    manager_dashboard_index_path(resource)
  end

  def after_sign_up_path_for(resource)
    manager_dashboard_index_path(resource)
  end
end