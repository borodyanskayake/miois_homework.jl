export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    digits_mass = Array{Int64}(undef, 1, len(a))
    push!()
    return digits_mass;
end

function touppercase(str_)
    return 0;
end

function firstnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function secondnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function infnorm(vec_::AbstractVector{<:Number})
    return 0;
end

function firstnorm(vec_::AbstractMatrix{<:Number})
    return 0;
end

function infnorm(vec_::AbstractMatrix{<:Number})
    return 0;
end

function isleap(year)
    if year % 4 == 0 && year % 100 != 0
        return true;
    elseif year % 400 == 0
        return true;
    else
        return false;
    end
end

function chesscolor(cell1, cell2)
    return false;
end
