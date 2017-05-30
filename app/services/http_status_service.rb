class HttpStatusService
  require 'net/http'

  def initialize(domain)
    @domain = domain
  end

  def status_code
    request_status
  end

  private
    def request_status
      begin
        response = Net::HTTP.new(@domain).request_head('/')
        response.code
      rescue
        'We could not connect to the DNS'
      end
    end
end