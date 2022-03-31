"""
    factorial(n::Int)

Compute the factorial of n.
"""
function factorial(n::Int)
    if n < 0
        throw(DomainError("n must be non-negative"))
    end
    result = 1
    for i in 1:n
        result *= i
    end
    return result
end

using Test

@test factorial(0) == 1
@test factorial(1) == 1
@test factorial(5) == 120
@test_throws DomainError factorial(-1)
