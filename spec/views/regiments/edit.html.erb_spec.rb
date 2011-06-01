require 'spec_helper'

describe "regiments/edit.html.erb" do
  before(:each) do
    @regiment = assign(:regiment, stub_model(Regiment,
      :ordinal => "MyString",
      :volunteer => false,
      :state => "MyString",
      :reg_type => "MyString",
      :company => "MyString",
      :independent => false,
      :name => "MyString",
      :nickname => "MyString",
      :notes => "MyText",
      :person_id => 1,
      :battle_id => 1,
      :corps_id => 1,
      :brigade_id => 1,
      :division_id => 1,
      :army_id => 1
    ))
  end

  it "renders the edit regiment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => regiments_path(@regiment), :method => "post" do
      assert_select "input#regiment_ordinal", :name => "regiment[ordinal]"
      assert_select "input#regiment_volunteer", :name => "regiment[volunteer]"
      assert_select "input#regiment_state", :name => "regiment[state]"
      assert_select "input#regiment_reg_type", :name => "regiment[reg_type]"
      assert_select "input#regiment_company", :name => "regiment[company]"
      assert_select "input#regiment_independent", :name => "regiment[independent]"
      assert_select "input#regiment_name", :name => "regiment[name]"
      assert_select "input#regiment_nickname", :name => "regiment[nickname]"
      assert_select "textarea#regiment_notes", :name => "regiment[notes]"
      assert_select "input#regiment_person_id", :name => "regiment[person_id]"
      assert_select "input#regiment_battle_id", :name => "regiment[battle_id]"
      assert_select "input#regiment_corps_id", :name => "regiment[corps_id]"
      assert_select "input#regiment_brigade_id", :name => "regiment[brigade_id]"
      assert_select "input#regiment_division_id", :name => "regiment[division_id]"
      assert_select "input#regiment_army_id", :name => "regiment[army_id]"
    end
  end
end
