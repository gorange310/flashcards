class Comment < ApplicationRecord
  validates :content, presence: true
  belongs_to :card

  default_scope { where(deleted_at: nil) }

  def destroy
    update(deleted_at: Time.now)
  end
end
