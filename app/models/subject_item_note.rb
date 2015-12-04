class SubjectItemNote < ActiveRecord::Base
  NOTES = %w(1 2 3 4 5)
  belongs_to :student

  validates :student_id, :subject_item_id, presence: true
  validates :academic_title, inclusion: { in: NOTES }, presence: true

  scope :for_subject_item, -> (subject_item) { where(subject_item: subject_item) }
end
