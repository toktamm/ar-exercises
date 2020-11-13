class Store < ActiveRecord::Base

  # one to many relation
  has_many :employees
    # Stores must always have a name that is a minimum of 3 characters
    validates :name, length: { minimum: 3 }
    # Stores have an annual_revenue that is a number (integer) that must be 0 or more
    validates :annual_revenue, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
    # BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
    validate :both_apparel_cannot_be_empty
    def both_apparel_cannot_be_empty
      if mens_apparel == false && womens_apparel == false
        errors.add(:mens_apparel, "should have at least one apparel")
        errors.add(:womens_apparel, "should have at least one apparel")
      end
    end

end
