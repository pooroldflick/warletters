require 'spec_helper'

describe "companies/edit.html.erb" do
  before(:each) do
    @company = assign(:company, stub_model(Company,
      :identity => "MyString",
      :regiment_id => "",
      :person_id => "",
      :battle_id => "",
      :brigade_id => "",
      :corps_id => "",
      :division_id => "",
      :army_id => 1
    ))
  end

  it "renders the edit company form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => companies_path(@company), :method => "post" do
      assert_select "input#company_identity", :name => "company[identity]"
      assert_select "input#company_regiment_id", :name => "company[regiment_id]"
      assert_select "input#company_person_id", :name => "company[person_id]"
      assert_select "input#company_battle_id", :name => "company[battle_id]"
      assert_select "input#company_brigade_id", :name => "company[brigade_id]"
      assert_select "input#company_corps_id", :name => "company[corps_id]"
      assert_select "input#company_division_id", :name => "company[division_id]"
      assert_select "input#company_army_id", :name => "company[army_id]"
    end
  end
end
