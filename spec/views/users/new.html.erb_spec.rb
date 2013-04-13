require 'spec_helper'

describe "users/new.html.erb" do
  before(:each) do
    assign(:user, stub_model(User,
      :username => "MyString",
      :email => "MyString",
      :crypted_password => "MyString",
      :password_salt => "MyString",
      :persistence_token => "MyString",
      :password_field => "MyString",
      :photo => "MyString",
      :adress => "MyString",
      :code_postal => 1,
      :ville => "MyString",
      :pay => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => users_path, :method => "post" do
      assert_select "input#user_username", :name => "user[username]"
      assert_select "input#user_email", :name => "user[email]"
      assert_select "input#user_crypted_password", :name => "user[crypted_password]"
      assert_select "input#user_password_salt", :name => "user[password_salt]"
      assert_select "input#user_persistence_token", :name => "user[persistence_token]"
      assert_select "input#user_password_field", :name => "user[password_field]"
      assert_select "input#user_photo", :name => "user[photo]"
      assert_select "input#user_adress", :name => "user[adress]"
      assert_select "input#user_code_postal", :name => "user[code_postal]"
      assert_select "input#user_ville", :name => "user[ville]"
      assert_select "input#user_pay", :name => "user[pay]"
    end
  end
end
