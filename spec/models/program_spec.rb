require 'spec_helper'

describe Program do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:subtitle) }
  it { should validate_presence_of(:code) }
  it { should ensure_length_of(:code).is_at_most(6) }
  
end
