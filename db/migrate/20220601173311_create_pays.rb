class CreatePays < ActiveRecord::Migration[7.0]
  def change
    create_table :pays do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
