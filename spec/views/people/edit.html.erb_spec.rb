require 'spec_helper'

describe "people/edit.html.erb" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :name => "MyString",
      :bio => "MyText",
      :service => false,
      :regiment => "MyString",
      :company => "MyString",
      :mustered_in => "MyString",
      :mustered_out => "MyString",
      :letter_id => 1,
      :user_id => 1,
      :project_id => 1,
      :side => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => people_path(@person), :method => "post" do
      assert_select "input#person_name", :name => "person[name]"
      assert_select "textarea#person_bio", :name => "person[bio]"
      assert_select "input#person_service", :name => "person[service]"
      assert_select "input#person_regiment", :name => "person[regiment]"
      assert_select "input#person_company", :name => "person[company]"
      assert_select "input#person_mustered_in", :name => "person[mustered_in]"
      assert_select "input#person_mustered_out", :name => "person[mustered_out]"
      assert_select "input#person_letter_id", :name => "person[letter_id]"
      assert_select "input#person_user_id", :name => "person[user_id]"
      assert_select "input#person_project_id", :name => "person[project_id]"
      assert_select "input#person_side", :name => "person[side]"
    end
  end
end
