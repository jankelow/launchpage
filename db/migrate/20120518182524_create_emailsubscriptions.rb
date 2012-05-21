class CreateEmailsubscriptions < ActiveRecord::Migration
  def change
    create_table :emailsubscriptions do |t|

      t.timestamps
    end
  end
end
