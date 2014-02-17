require 'spec_helper'

describe Program do
  it { expect(subject).to validate_presence_of(:title) } 
  it { expect(subject).to validate_presence_of(:subtitle) } 
  it { expect(subject).to validate_presence_of(:code) } 
  it { expect(subject).to ensure_length_of(:code).is_equal_to(6) }
end
