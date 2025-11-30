function arraysum(ar::AbstractVector{<:Number})::Float64
    sum = 0
    for i in ar
        sum += i
    end
    return sum;
end


function mul35sum(N::Integer)::Int64
    sum = 0
    i = 1
    while i < N
        if (i % 3 == 0) || (i % 5 == 0)
            sum += i
        end
        i += 1
    end
    return sum;
end
