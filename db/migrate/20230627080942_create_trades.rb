class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.string :name
      t.integer :amount
      t.references :user, index: true, null: false, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
