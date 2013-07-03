require 'spec_helper'

describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contato'" do
    it "returns http success" do
      get 'contato'
      response.should be_success
    end
  end

  describe "GET 'personagem'" do
    it "returns http success" do
      get 'personagem'
      response.should be_success
    end
  end

  describe "GET 'poesia'" do
    it "returns http success" do
      get 'poesia'
      response.should be_success
    end
  end

end
