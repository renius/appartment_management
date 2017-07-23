require 'rails_helper'

describe PostsController do
  let!(:post) { Post.create! }

  describe '#index' do
    before { get(:index) }

    it { expect(response).to be_success }
    it { expect(assigns(:posts)).to include(post) }
  end

  describe '#show' do
    before { get(:show, id: post.id ) }

    it { expect(response).to be_success }
    it { expect(assigns(:post)).to eq(post) }
  end
end
