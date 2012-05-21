class CreateLaunchsubscribers < ActiveRecord::Migration
  def change
    create_table :launchsubscribers do |t|
      t.string :email

      t.timestamps
    end
  end
end
