class Doctors::RegistrationsController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: [:new, :create, :cancel]
  prepend_before_action :authenticate_scope!, only: [ :edit, :update, :destroy]

   # POST /resource
   def create
     build_resource(sign_up_params)

     resource.save
     yield resource if block_given?
     if admin_signed_in?
       ##CAMBIAR EL redirect_to
       redirect_to doctors_path, alert: "Doctor Creado exitosamente"
     else
       if resource.persisted?
         if resource.active_for_authentication?
           set_flash_message! :notice, :signed_up
           sign_up(resource_name, resource)
           respond_with resource, location: after_sign_up_path_for(resource)
         else
           set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
           expire_data_after_sign_in!
           respond_with resource, location: after_inactive_sign_up_path_for(resource)
         end
       else
         clean_up_passwords resource
         set_minimum_password_length
         respond_with resource
       end
     end
   end


   protected

   def sign_up_params
     params.require(:doctor).permit(:first_name, :last_name, :email, :password, :password_confirmation)
   end

   def account_update_params
     params.require(:doctor).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)
   end
end
