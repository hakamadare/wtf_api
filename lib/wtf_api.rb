require "wtf_api/version"
require "grape"
require "bsd_wtf"

module WtfApi
  class API < Grape::API
    version 'v0', using: :header, vendor: :wrongtools
    format :json
    prefix :wtf

    resource :version do
      desc 'Return API version'
      get :api do
        WtfApi::VERSION
      end

      desc 'Return bsd_wtf gem version'
      get :wtf do
        BsdWtf::VERSION
      end
    end

    resource :lookup do
      desc 'Look up an acronym'
      params do
        requires :acronym, type: String, desc: 'Acronym to look up'
      end

      route_param :acronym do
        get do
          BsdWtf.wtf(params[:acronym])
        end
      end
    end
  end
end
