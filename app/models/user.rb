class User < ApplicationRecord
    validates :tytle, presence: true
    validate :date_before_start
    validate :date_before_end

    def date_before_start
      if  start_at.blank? || start_at < Date.today
      errors.add(:start_at, "は今日以降のものを選択してください") 
    end
  end

  def date_before_end
    if end_at.blank? || end_at < Date.today
    errors.add(:end_at, "は今日以降のものを選択してください") 
  end
end


end
