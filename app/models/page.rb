class Page < ActiveRecord::Base
  attr_accessible :content, :title, :permalink

  resourcify

  def to_param
    permalink
  end
end
