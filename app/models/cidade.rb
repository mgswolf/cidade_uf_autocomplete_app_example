class Cidade < ActiveRecord::Base
  belongs_to :uf
  attr_accessible :nome, :uf_id
  attr_reader :cidade_uf_nome, :autocomplete

  validates :nome, :uf_id, :presence => true

  def cidade_uf_nome
    "#{nome} - #{uf.sigla}"
  end

  def self.autocomplete(query)
    cidades = where("nome LIKE ?", "%#{query}%").order(:nome).limit(10)
    @cidades_hash = []
    cidades.each do |cidade|
      @cidades_hash << {"label" => cidade.cidade_uf_nome, "id" => cidade.id}
    end
    @cidades_hash
  end

end
