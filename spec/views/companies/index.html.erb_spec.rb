require 'spec_helper'

describe "companies/index.html.erb" do
  before(:each) do
    assign(:companies, [
      stub_model(Company,
        :identity => "Identity",
        :regiment_id => "",
        :person_id => "",
        :battle_id => "",
        :brigade_id => "",
        :corps_id => "",
        :division_id => "",
        :army_id => 1
      ),
      stub_model(Company,
        :identity => "Identity",
        :regiment_id => "",
        :person_id => "",
        :battle_id => "",
        :brigade_id => "",
        :corps_id => "",
        :division_id => "",
        :army_id => 1
      )
    ])
  end

  it "renders a list of companies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Identity".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
