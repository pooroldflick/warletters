require 'spec_helper'

describe "brigades/new.html.erb" do
  before(:each) do
    assign(:brigade, stub_model(Brigade,
      :identity => "MyString",
      :regiment_id => "",
      :person_id => "",
      :battle_id => "",
      :brigade_id => "",
      :corps_id => "",
      :division_id => "",
      :army_id => 1
    ).as_new_record)
  end

  it "renders new brigade form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => brigades_path, :method => "post" do
      assert_select "input#brigade_identity", :name => "brigade[identity]"
      assert_select "input#brigade_regiment_id", :name => "brigade[regiment_id]"
      assert_select "input#brigade_person_id", :name => "brigade[person_id]"
      assert_select "input#brigade_battle_id", :name => "brigade[battle_id]"
      assert_select "input#brigade_brigade_id", :name => "brigade[brigade_id]"
      assert_select "input#brigade_corps_id", :name => "brigade[corps_id]"
      assert_select "input#brigade_division_id", :name => "brigade[division_id]"
      assert_select "input#brigade_army_id", :name => "brigade[army_id]"
    end
  end
end
