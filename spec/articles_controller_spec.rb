require 'spec_helper'
require_relative '../app/controllers/application_controller'
require_relative '../app/controllers/articles_controller'

describe ArticlesController do
  describe "GET #index" do
    it "populates an array of articles" do
      article = build(:article)
      get :index
      assigns(:articles).should eq([article])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested article to @article" do
      article = Factory(:article)
      get :show, id: article
      assigns(:article).should eq(article)
    end

    it "renders the #show view" do
      get :show, id: Factory(:article)
      response.should render_template :show
    end
  end
end