# encoding: UTF-8

#search the make
uri = URI("http://www.webmotors.com.br/carro/marcas")

# Make request for Webmotors site
response = Net::HTTP.post_form(uri, {})
json = JSON.parse response.body

# Itera no resultado e grava as marcas que ainda não estão persistidas
json.each do |make_params|
  make = Make.find_or_initialize_by(name: make_params["Nome"], webmotors_id: make_params["Id"])
  make.save
end

Make.all.each do |make|
  uri = URI("http://www.webmotors.com.br/carro/modelos")

  response = Net::HTTP.post_form(uri, { marca: make.webmotors_id })
  models_json = JSON.parse response.body

  models_json.each do |json|
    Model.find_or_create_by(make_id: make.id, name: json["Nome"])
  end
end
