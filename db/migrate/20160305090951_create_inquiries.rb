class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
      t.string   "company_name"
      t.string   "name"
      t.string   "email"
      t.string   "phone"
      t.text     "content"
      t.timestamps null: false
    end
  end
end
