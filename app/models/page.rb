class Page < ActiveRecord::Base
  attr_accessible :content, :title, :permalink

  def to_param
    permalink
  end
end
