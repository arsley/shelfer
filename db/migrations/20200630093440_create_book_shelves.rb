Hanami::Model.migration do
  change do
    create_table :book_shelves do
      primary_key :id
      foreign_key :user_id, :users, on_delete: :cascade, null: false

      column :name,    String,     null: false
      column :private, FalseClass, null: false, default: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
