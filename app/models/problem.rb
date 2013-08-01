class Problem < ActiveRecord::Base
  validates :title, :time_limit, :memory_limit, :description, :input, :output, presence: true

  def getRate()
    ret = 0
    ret = self.accepted.to_f/self.submit.to_f*100 if (not self.accepted.nil?) and (not self.submit.nil?)

    return "#{ret}%"
  end
end
