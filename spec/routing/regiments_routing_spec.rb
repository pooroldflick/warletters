require "spec_helper"

describe RegimentsController do
  describe "routing" do

    it "routes to #index" do
      get("/regiments").should route_to("regiments#index")
    end

    it "routes to #new" do
      get("/regiments/new").should route_to("regiments#new")
    end

    it "routes to #show" do
      get("/regiments/1").should route_to("regiments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/regiments/1/edit").should route_to("regiments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/regiments").should route_to("regiments#create")
    end

    it "routes to #update" do
      put("/regiments/1").should route_to("regiments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/regiments/1").should route_to("regiments#destroy", :id => "1")
    end

  end
end
