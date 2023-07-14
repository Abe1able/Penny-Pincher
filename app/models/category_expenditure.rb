# frozen_string_literal: true

class CategoryExpenditure < ApplicationRecord
  belongs_to :category
  belongs_to :expenditure
end
