module Shorturl
    class Data < Grape::API
  
     resource :links do

      desc "List all links"
      get do
        Link.all
      end

      desc "create a new link"
      params do
        requires :base_url, type: String
        requires :short_url, type: String
      end

      post do
         Link.create!({
           base_url: params[:base_url],
           short_url: params[:short_url]
         })
      end
      
      desc "delete an employee"
      params do
        requires :id, type: String
      end
     
      delete ':id' do
        Link.find(params[:id]).destroy!
      end
  
      end
    end
  end