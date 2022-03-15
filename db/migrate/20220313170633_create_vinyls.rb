class CreateVinyls < ActiveRecord::Migration[5.2]
  def change
    create_table :vinyls do |t|
      t.string :name
      t.string :author
      t.date :release_date
      t.string :format_info
      t.integer :status, default: 0
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
