class Api::V1::SearchesController < ApplicationController
	require 'rubygems'
	require 'json'
  before_action :authenticate_user!

  def index
  	if params[:search_keyword].blank? 
      render :status => 401, :json => {:status => "Failure", :error_code  => 1122 , :message => "Search keyword is required"}
      return true 
    end
    @authors = Author.search(params[:search_keyword])
    @books = Book.search(params[:search_keyword])
    @reviews = Review.search(params[:search_keyword])
  end

end
