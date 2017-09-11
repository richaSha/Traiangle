require ('rspec')
require ('./lib/triangle')
require ('pry')

describe('triangle') do
  it("will find if sides are not belong to trangle") do
    expect(Triangle.new(2,2,8).find_triangle).to(eq("Not a triangle"))
  end
  it("will find if triangle is equilateral") do
    expect(Triangle.new(2,2,2).find_triangle).to(eq("Equilateral"))
  end
  it("will find if triangle is isosceles") do
    expect(Triangle.new(3,3,4).find_triangle).to(eq("Isosceles"))
  end
  it("will find if triangle is scalene") do
    expect(Triangle.new(2,3,4).find_triangle).to(eq("Scalene"))
  end
end
