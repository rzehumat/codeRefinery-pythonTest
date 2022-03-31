using Test

function fizzbuzz(number)
 if number < 1
        throw(DomainError(number, "number needs to be 1 or higher"))
    elseif number % 15 == 0
        return "fizzbuzz"
    elseif number % 3 == 0
        return "fizz"
    elseif number % 5 == 0
        return "buzz"
    else
        return "something else"
    end
end

@testset "fizzbuzz exists" begin
  @test fizzbuzz(3) == "fizz"
  @test fizzbuzz(5) == "buzz"
  @test fizzbuzz(15) == "fizzbuzz"
  @test fizzbuzz(2) == "something else"
end
