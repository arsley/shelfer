Hanami::Model.migration do
  change do
    create_table :book_shelf_items do
      primary_key :id

      foreign_key :book_shelf_id, :book_shelves, on_delete: :cascade, null: false
      foreign_key :book_id, :books, on_delete: :cascade, null: false

      index :book_shelf_id

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
