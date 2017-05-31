RSpec.describe DomainStatus::DomainsController, type: :controller do
  describe "GET by_domain" do
    routes { DomainStatus::Engine.routes }

    context 'HTML request' do
      it "has a 200 status code" do
        get :by_domain, { domain: 'www.google.com' }
        expect(response.status).to eq(200)
      end

      it "should by render template by domain" do
        get :by_domain, { domain: 'www.google.com' }
        expect(response).to render_template("by_domain")
      end
    end

    context 'JSON request' do
      it "should get json response" do
        get :by_domain, { domain: 'www.google.com', format: :json }
        expect(response.content_type).to eq("application/json")
      end

      it "should be get a successful response" do
        get :by_domain, { domain: 'www.google.com', format: :json }
        expect(JSON(response.body)).to eq({"status" => "302"})
      end

      it "should be get a no domian response" do
        get :by_domain, { domain: '', format: :json }
        expect(JSON(response.body)).to eq({"status" => "We could not connect to the DNS"})
      end
    end

  end
end