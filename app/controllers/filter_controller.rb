class FilterController < ApplicationController
  def properties
    if account_signed_in?
      path = current_account.admin? ? accounts_path : dashboard_path
    end

    @properties = Property.latest
    @posts = Post.latest

    def get_filterd
      filters = params[:properties]
      @properties = Property.all
      if filters.present?
        @properties = @properties.where(name: filters['type']) if filters['type'] != 'All Type'
        @properties = @properties.where(address: filters['city']) if filters['city'] != 'All City'
        @properties = @properties.where("price <= ?", filters['price'].to_i) if filters['price'] != 'Unlimited'
      end

      render 'index'
    end
  end
end
