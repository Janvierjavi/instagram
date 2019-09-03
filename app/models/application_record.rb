class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # before_validation { self.Email.downcase!}
end
