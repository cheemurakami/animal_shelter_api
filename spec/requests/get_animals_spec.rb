require 'rails_helper'

describe "get all animals route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}
  before { get '/api/v1/animals'}

  it 'returns all animals' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get all animals searched", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}
  let!(:dog) { FactoryBot.create(:animal, kind: "dog")}
  before { get '/api/v1/animals/search?kind=cat'}

  it 'returns all cats' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get all animals searched", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 2)}
  before { get '/api/v1/animals/random'}

  it 'returns one cat' do
    expect(JSON.parse(response.body)["kind"]).to eq("cat")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end