class CreateLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :letters do |t|
      t.integer :character_code
      t.string :alphabet_type

      t.timestamps
    end
  end
end
