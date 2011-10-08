class CollectEmails < ActiveRecord::Migration
  def up
    create_table :interested_emails do |t|
      t.string :email, :null => false
      t.timestamps
    end
  end

  def down
    remove_table :interested_emails
  end
end
