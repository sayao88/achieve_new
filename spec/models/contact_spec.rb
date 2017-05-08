require 'rails_helper'

describe Contact do
  # タイトルがあれば有効な状態であること
    it "is valid with title,email,content" do
        contact = Contact.new(name:'yamada',email:'yamada@mail.com',content:'教えてください')
        expect(contact).to be_valid
    end
  #タイトルがなければ無効であること
    it "is invalid without title,email,content" do
        contact = Contact.new
        expect(contact).not_to be_valid
    end

end