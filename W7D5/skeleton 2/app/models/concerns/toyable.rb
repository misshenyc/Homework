module Toyable
  extend ActiveSupport::Concern

  included do

  end

  def receive_toy(name)
    self.find_or_create_by(name:name)
  end
end