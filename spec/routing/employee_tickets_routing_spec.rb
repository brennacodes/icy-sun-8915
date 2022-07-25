require "rails_helper"

RSpec.describe EmployeeTicketsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/employee_tickets").to route_to("employee_tickets#index")
    end

    it "routes to #new" do
      expect(get: "/employee_tickets/new").to route_to("employee_tickets#new")
    end

    it "routes to #show" do
      expect(get: "/employee_tickets/1").to route_to("employee_tickets#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/employee_tickets/1/edit").to route_to("employee_tickets#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/employee_tickets").to route_to("employee_tickets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/employee_tickets/1").to route_to("employee_tickets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/employee_tickets/1").to route_to("employee_tickets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/employee_tickets/1").to route_to("employee_tickets#destroy", id: "1")
    end
  end
end
