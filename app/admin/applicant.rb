ActiveAdmin.register Applicant do

  permit_params :name, :email, :github

  index do
    column :name
    column :email
    column :github
    column :created_at
    actions
  end


end
