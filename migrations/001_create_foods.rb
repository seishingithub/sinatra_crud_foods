Sequel.migration do
  up do
    create_table(:foods) do
      primary_key :id
      String :favorite_food, :null=>false
      String :worst_food, :null=>false
      String :guilty_pleasure
    end
  end

  down do
    drop_table(:foods)
  end
end