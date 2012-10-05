require 'spec_helper'

describe User do
  before do
    @uf = FactoryGirl.create(:uf)
    @cidade = FactoryGirl.create(:cidade, uf: @uf)
  end

  it 'should be valid' do
    user = FactoryGirl.build(:user, cidade: @cidade)
    user.should be_valid
  end

  it 'nome should not be blank' do
    user = FactoryGirl.build(:user, nome: '')
    user.should_not be_valid
  end

  it 'should record cidade from cidade_uf' do
    user = User.create(nome: 'teste', cidade_uf: @cidade.cidade_uf_nome)
    user.cidade.should eql(@cidade)
  end
end
