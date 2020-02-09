require 'spec_helper'

RSpec.describe 'The Profile App' do
  it "send response" do
    get '/'
    expect(last_response).to be_ok
  end
end