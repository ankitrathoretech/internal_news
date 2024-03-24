ActiveAdmin.register Article do
    permit_params :title, :subtitle, :body, :image, :published_at, :admin_user_id
  
    index do
      selectable_column
      id_column
      column :title
      column :subtitle
      column :published_at
      column :created_at
      actions
    end
  
    filter :title
    filter :subtitle
    filter :published_at
    filter :admin_user_id
  
    form do |f|
      f.inputs do
        f.input :title
        f.input :subtitle
        f.input :body
        f.input :image, as: :file
        f.input :admin_user_id, as: :select, collection: AdminUser.pluck(:first_name, :id)
        f.input :published_at, as: :datepicker
      end
      f.actions
    end
  
  end
  