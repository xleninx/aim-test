require_dependency "domain_status/application_controller"

module DomainStatus
  class DomainsController < ApplicationController
    def status
      @status = HttpStatusService.new(status_params).status_code
      respond_to do |format|
        format.html {}
        format.json { render json: { status: @status } }
      end
    end

    private

      def status_params
        params.permit(:domain)
      end
  end
end
