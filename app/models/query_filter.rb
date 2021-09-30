class QueryFilter < ApplicationRecord
  belongs_to :saved_query

  def build_query(column_type, query_text)
    case column_type
    when :string
      ["#{label} LIKE ?", "%#{query_text}%"]
    end
  end

  # def build_query_proc
  #   ->
  # end
end
