require 'spec_helper'

describe Program do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:subtitle) }
  
end
