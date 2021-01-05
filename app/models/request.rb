class Request < ApplicationRecord
  belongs_to :team
  belongs_to :recruit
  enum status: { unconfirmed: 0, approval: 1, disapproval:2 }
  
  DISPLAY_STATUS = {
    unconfirmed: '未承認',
    approval: '承認',
    disapproval: '未承認'
  }
  
  def display_status
    DISPLAY_STATUS[status.yo_sym]
  end
  
end
