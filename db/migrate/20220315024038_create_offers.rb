class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :offeredvinyl_id
      t.integer :receivervinyl_id
      t.integer :offer_state
      t.datetime :end_date

      t.timestamps
    end
  end
end
