require 'rails_helper'

RSpec.describe 'POST /api/comments', type: :request do
  let!(:article) {create(:article)}
  
    describe 'User can comment on an article'
    before do 
      post '/api/comments',
      params: {
        comment: {
          body: 'I should have done more backend',
          article_id: article.id
        }
      }  
  end
  
  it 'returns a 200 response' do
    expect(response).to have_http_status 200
  end
  
  # it 'assigns comment to  article' do
  #   expect(response_json['article']['id']).to eq article.id
  # end
  
  end
  
  