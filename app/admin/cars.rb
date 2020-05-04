ActiveAdmin.register Car do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :brand_id, :year, :model, :exterior_color, :interior_color, :image_url, :engine, :fuel_consumption, :options
  #
  # or
  #
  # permit_params do
  #   permitted = [:brand, :year, :model, :exterior_color, :interior_color, :image_url, :engine, :fuel_consumption, :options]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
