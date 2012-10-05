require 'spec_helper'

describe Cidade do
  before do
    @uf = FactoryGirl.create(:uf)
  end

  it 'should be valid' do
    cidade = FactoryGirl.build(:cidade, uf: @uf)
    cidade.should be_valid
  end

  it 'nome should not be blank' do
    cidade = FactoryGirl.build(:cidade, nome: '', uf: @uf)
    cidade.should_not be_valid
  end

  it 'uf should not be nil' do
    cidade = FactoryGirl.build(:cidade)
    cidade.should_not be_valid
  end

  it 'should respond to cidade_uf_nome' do
    cidade = FactoryGirl.create(:cidade, uf: @uf)
    cidade.cidade_uf_nome.should eql("#{cidade.nome} - #{@uf.sigla}")
  end

#  it 'should load from seed' do
#    load "#{Rails.root}/db/seeds.rb"
#    Cidade.count.should == 9714
#  end
end
