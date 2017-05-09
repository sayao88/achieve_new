require 'rails_helper'

describe Contact do
  #入力内容があれば有効な状態であること
    it "is valid with name,email,content" do
        contact = Contact.new(name:'yamada',email:'yamada@mail.com',content:'教えてください')
        expect(contact).to be_valid
    end
  #入力内容がなければ無効であること
    it "is invalid without name,email,content" do
        contact = Contact.new
        expect(contact).not_to be_valid
    end

end