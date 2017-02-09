class CreateEmails < ActiveRecord::Migration[5.0]
  def change
    create_table :emails do |t|
      t.string :to
      t.string :cc
      t.string :bcc
      t.string :subject
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
