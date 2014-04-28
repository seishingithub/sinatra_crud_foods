Sequel.migration do
  change do
    alter_table(:foods) do
      rename_column :favorite_food, :name
      rename_column :worst_food, :description
      rename_column :guilty_pleasure, :rating
    end
  end
end