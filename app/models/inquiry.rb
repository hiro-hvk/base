class Inquiry < ActiveRecord::Base
  validates :company_name, presence: {message: 'を入力してください'}
  validates :name, presence: {message: 'を入力してください'}
  validates :email, presence: {message: 'を入力してください'}
  validates :phone, presence: {message: 'を入力してください'}
  validates :content, presence: {message: 'を入力してください'}
end
