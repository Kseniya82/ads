Sequel.migration do
  change do
    create_table(:ads) do
      primary_key :id, unique: true
      String :title, null: false
      Text :description, null: false
      String :city, null: false
      Fixnum :lat
      Fixnum :lon
      DateTime :created_at, null: false
      DateTime :updated_at, null: false
      Bignum :user_id, null: false

      index :user_id
    end
  end
end
