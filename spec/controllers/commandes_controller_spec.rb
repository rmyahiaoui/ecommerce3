require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe CommandesController do

  def mock_commande(stubs={})
    @mock_commande ||= mock_model(Commande, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all commandes as @commandes" do
      Commande.stub(:all) { [mock_commande] }
      get :index
      assigns(:commandes).should eq([mock_commande])
    end
  end

  describe "GET show" do
    it "assigns the requested commande as @commande" do
      Commande.stub(:find).with("37") { mock_commande }
      get :show, :id => "37"
      assigns(:commande).should be(mock_commande)
    end
  end

  describe "GET new" do
    it "assigns a new commande as @commande" do
      Commande.stub(:new) { mock_commande }
      get :new
      assigns(:commande).should be(mock_commande)
    end
  end

  describe "GET edit" do
    it "assigns the requested commande as @commande" do
      Commande.stub(:find).with("37") { mock_commande }
      get :edit, :id => "37"
      assigns(:commande).should be(mock_commande)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created commande as @commande" do
        Commande.stub(:new).with({'these' => 'params'}) { mock_commande(:save => true) }
        post :create, :commande => {'these' => 'params'}
        assigns(:commande).should be(mock_commande)
      end

      it "redirects to the created commande" do
        Commande.stub(:new) { mock_commande(:save => true) }
        post :create, :commande => {}
        response.should redirect_to(commande_url(mock_commande))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved commande as @commande" do
        Commande.stub(:new).with({'these' => 'params'}) { mock_commande(:save => false) }
        post :create, :commande => {'these' => 'params'}
        assigns(:commande).should be(mock_commande)
      end

      it "re-renders the 'new' template" do
        Commande.stub(:new) { mock_commande(:save => false) }
        post :create, :commande => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested commande" do
        Commande.stub(:find).with("37") { mock_commande }
        mock_commande.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :commande => {'these' => 'params'}
      end

      it "assigns the requested commande as @commande" do
        Commande.stub(:find) { mock_commande(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:commande).should be(mock_commande)
      end

      it "redirects to the commande" do
        Commande.stub(:find) { mock_commande(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(commande_url(mock_commande))
      end
    end

    describe "with invalid params" do
      it "assigns the commande as @commande" do
        Commande.stub(:find) { mock_commande(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:commande).should be(mock_commande)
      end

      it "re-renders the 'edit' template" do
        Commande.stub(:find) { mock_commande(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested commande" do
      Commande.stub(:find).with("37") { mock_commande }
      mock_commande.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the commandes list" do
      Commande.stub(:find) { mock_commande }
      delete :destroy, :id => "1"
      response.should redirect_to(commandes_url)
    end
  end

end
