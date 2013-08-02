class Problem < ActiveRecord::Base
  attr_accessible :title, :time_limit, :memory_limit, :description, :input, :output, presence: true

  validates :title, :time_limit, :memory_limit, :description, :input, :output, presence: true
  validates :time_limit, :memory_limit, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
  }

  def getAcceptedRate()
    ret = 0.0
    if (not self.accepted.nil?) and (not self.submit.nil?) and (not self.submit == 0)
      ret = self.accepted/self.submit.to_f*100 
    end

    return ret # return percent of accepted rate
  end
end
