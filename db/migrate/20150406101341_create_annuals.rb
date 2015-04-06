class CreateAnnuals < ActiveRecord::Migration
  def change
    create_table :annuals do |t|
      t.string :type
      t.datetime :date
      t.references :profile, index: true

      t.timestamps null: false
    end
    add_foreign_key :annuals, :profiles
  end
end
