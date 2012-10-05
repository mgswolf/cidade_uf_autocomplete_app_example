class User < ActiveRecord::Base
  belongs_to :cidade
  attr_accessible :nome,:cidade_id, :cidade_nome
  attr_accessor :cidade_nome

  validates :nome, :presence => true

  def cidade_nome
    cidade.cidade_uf_nome
    rescue
      ''
  end
end
