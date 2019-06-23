class Order < ApplicationRecord
  enum status: [:pending, :approved, :failed]
end
