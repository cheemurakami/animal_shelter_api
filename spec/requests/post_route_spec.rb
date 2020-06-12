require 'rails_helper'

describe "post an animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :kind => 'cat', :age => 10, :breed => 'test_breed' }
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the animal kind' do
    expect(JSON.parse(response.body)['kind']).to eq('cat')
  end

  it 'returns the animal age' do
    expect(JSON.parse(response.body)['age']).to eq(10)
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end