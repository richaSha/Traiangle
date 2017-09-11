require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require ('./lib/triangle')
require ('pry')

get('/') do
  erb(:input)
end

get('/output') do
  # binding.pry
  @first_side = params.fetch("side1")
  @second_side = params.fetch("side2")
  @third_side = params.fetch("side3")
  @triangle = Triangle.new(@first_side.to_i, @second_side.to_i, @third_side.to_i)
  @result = @triangle.find_triangle
  erb(:output)
end
