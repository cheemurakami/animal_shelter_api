require 'rails_helper'

describe "update an animal route", :type => :request do

  let!(:animal) { FactoryBot.create(:animal)}
  before do
    put "/api/v1/animals/#{animal.id}", params: { :age => 9 }
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['message']).to eq("This animal has been updated successfully")
  end

  it 'returns a updated status' do
    expect(response).to have_http_status(:ok)
  end
end

describe "update an animal route", :type => :request do

  let!(:animal) { FactoryBot.create(:animal)}
  before do
    patch "/api/v1/animals/#{animal.id}", params: { :age => 9 }
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['message']).to eq("This animal has been updated successfully")
  end

  it 'returns a updated status' do
    expect(response).to have_http_status(:ok)
  end
end