class CreateLanguageLetters < ActiveRecord::Migration[6.0]
  def change
    create_table :language_letters do |t|
      t.integer :language_id
      t.integer :letter_id

      t.timestamps
    end
  end
end
