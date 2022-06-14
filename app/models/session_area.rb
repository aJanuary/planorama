class SessionArea < ApplicationRecord
  belongs_to  :area
  belongs_to  :session

  validates_presence_of :area
  validates_presence_of :session

  accepts_nested_attributes_for :area

  has_paper_trail versions: { class_name: 'Audit::SessionVersion' }, ignore: [:updated_at, :created_at]
end