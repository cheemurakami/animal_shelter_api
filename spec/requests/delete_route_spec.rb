require 'rails_helper'

describe "delete an animal", :type => :request do

  let!(:animal) { FactoryBot.create(:animal)}
  before do
    delete "/api/v1/animals/#{animal.id}", params: { :age => 9 }
  end

  it 'returns delete message' do
    expect(JSON.parse(response.body)['message']).to eq("This animal has been deleted successfully")
  end

  it 'returns a updated status' do
    expect(response).to have_http_status(:ok)
  end
end