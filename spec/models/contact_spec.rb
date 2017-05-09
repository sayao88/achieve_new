require 'rails_helper'

describe Contact do
  #入力内容があれば有効な状態であること
    it "is valid with name,email,content" do
        contact = Contact.new(name:'yamada',email:'yamada@mail.com',content:'教えてください')
        expect(contact).to be_valid
    end
  #nameの入力内容がなければ無効であること
    it "is invalid without name" do
        contact = Contact.new(email:'yamada@mail.com',content:'教えてください')
        expect(contact).not_to be_valid
    end
  #emailの入力内容がなければ無効であること
    it "is invalid without email" do
        contact = Contact.new(name:'yamada',content:'教えてください')
        expect(contact).not_to be_valid
    end
  #contentの入力内容がなければ無効であること
    it "is invalid without content" do
        contact = Contact.new(name:'yamada',email:'yamada@mail.com')
        expect(contact).not_to be_valid
    end


end