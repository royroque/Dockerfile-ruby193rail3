xml.instruct!
xml.books do
  @books.each do |book|
    xml.book do
      xml.name book.name
      xml.author book.author
      xml.price number_to_currency book.price , precision: 0
      xml.active book.active
    end
  end
end
