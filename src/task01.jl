export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    digits_mass = [];
    while a != 0
        push!(digits_mass, a % 10);
        a = a // 10
    end
    return digits_mass[end:-1:1]
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
    if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
        return true
    else
        return false
    end
end

function chesscolor(cell1, cell2)
    return false;
end
