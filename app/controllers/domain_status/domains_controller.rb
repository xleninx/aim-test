require_dependency "domain_status/application_controller"

module DomainStatus
  class DomainsController < ApplicationController
    def by_domain
      @status = HttpStatusService.new(domain_params[:domain]).status_code
      respond_to do |format|
        format.html {}
        format.json { render json: { status: @status } }
      end
    end

    private

      def domain_params
        params.permit(:domain)
      end
  end
end
