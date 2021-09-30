class CreateQueryFilters < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_queries do |t|
      t.string :name
      t.timestamps
    end

    create_table :query_filters do |t|
      t.references :saved_query
      t.string :label
      t.boolean :negate
      t.timestamps
    end
  end
end
