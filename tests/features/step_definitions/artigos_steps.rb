Dado('que eu tenho um novo artigo') do |table|
  @artigo = table.rows_hash
end

Quando('faço o cadastro deste artigo') do
  visit '/admin/posts/add'
  sleep 5
  find('input[name=title]').set @artigo['titulo']
  find('input[name=image]').set @artigo['image']
  find('textarea[name=description]').set @artigo['descricao']
  find('#savePost').click
end

Então('devo ver a mensagem {string}') do |mensagem|
  expect(page).to have_content mensagem
  sleep 5
end
