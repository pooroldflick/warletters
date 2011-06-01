require 'spec_helper'

describe "regiments/index.html.erb" do
  before(:each) do
    assign(:regiments, [
      stub_model(Regiment,
        :ordinal => "Ordinal",
        :volunteer => false,
        :state => "State",
        :reg_type => "Reg Type",
        :company => "Company",
        :independent => false,
        :name => "Name",
        :nickname => "Nickname",
        :notes => "MyText",
        :person_id => 1,
        :battle_id => 1,
        :corps_id => 1,
        :brigade_id => 1,
        :division_id => 1,
        :army_id => 1
      ),
      stub_model(Regiment,
        :ordinal => "Ordinal",
        :volunteer => false,
        :state => "State",
        :reg_type => "Reg Type",
        :company => "Company",
        :independent => false,
        :name => "Name",
        :nickname => "Nickname",
        :notes => "MyText",
        :person_id => 1,
        :battle_id => 1,
        :corps_id => 1,
        :brigade_id => 1,
        :division_id => 1,
        :army_id => 1
      )
    ])
  end

  it "renders a list of regiments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ordinal".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Reg Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nickname".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
