module CertReaper
  module Api
    module V2
      class CertsController < ::Api::V2::BaseController

        resource_description do
          resource_id 'certs'
          api_version 'v2'
          api_base_url '/cert_reaper'
        end

        api :DELETE, '/certs/:certname', _('Clear a puppet certificate.')
        param :certname,  String, :desc => 'Full name of the user', :required => true

        def destroy
          render :json => {
            :error => _('Destroy got called.')
          }, :status => :precondition_failed
        end
      end
    end
  end
end