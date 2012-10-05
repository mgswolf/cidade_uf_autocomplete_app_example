# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Uf do
  it 'shold be valid' do
    uf = FactoryGirl.build(:uf)
    uf.should be_valid
  end

  it 'should have a nome' do
    uf = FactoryGirl.build(:uf, nome: '')
    uf.should_not be_valid
  end

  it 'should have a sigla' do
    uf = FactoryGirl.build(:uf, sigla: '')
    uf.should_not be_valid
  end

#  it 'should load from seed' do
#    load "#{Rails.root}/db/seeds.rb"
#    Uf.count.should == 27
#  end

  describe 'should be unique' do
    before do
      @uf = FactoryGirl.create(:uf, nome: 'Goiás', sigla: 'GO')
    end

    it 'nome should be unique' do
      uf = FactoryGirl.build(:uf, nome: 'Goiás')
      uf.should_not be_valid
    end

    it 'sigla should be unique' do
      uf = FactoryGirl.build(:uf, sigla: 'GO')
      uf.should_not be_valid
    end
  end
end
