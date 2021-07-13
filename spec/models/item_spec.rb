# spec/models/item_spec.rb
require 'rails_helper'

RSpec.describe Item, type: :model do
  # Ensure an item record belongs to a single todo record
  it { should belong_to(:todo) }

  # Ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
