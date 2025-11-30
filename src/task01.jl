export getdigits, touppercase, firstnorm, secondnorm, infnorm, isleap, chesscolor

function getdigits(a)
    digits_mass = []
    while a != 0
        push!(digits_mass, a % 10)
        a = div(a, 10)
    end
    return digits_mass[end:-1:1];
end

function touppercase(str_)
    str_mass = []
    for i in str_
        if (i >= 'a') && (i <= 'z')
            push!(str_mass, i + ('A' - 'a'))
        else
            push!(str_mass, i)
        end
    end
    return join(str_mass);
end

function firstnorm(vec_::AbstractVector{<:Number})
    norm1_vec = 0
    for i in vec_
        norm1_vec += abs(i)
    end
    return norm1_vec;
end

function secondnorm(vec_::AbstractVector{<:Number})
    norm2_vec = 0
    for i in vec_
        norm2_vec += i^2
    end
    return norm2_vec^0.5;
end

function infnorm(vec_::AbstractVector{<:Number})
    norminf_vec = 0
    for i in vec_
        if abs(i) > norminf_vec
            norminf_vec = i
        end
    end
    return norminf_vec;
end

function firstnorm(vec_::AbstractMatrix{<:Number})
    norm1_mat = 0
    m, n = size(vec_)
    for j in n
        sum = 0
        for i in m
            sum += vec_[i,j]
        end
        if sum > norm1_mat
            norm1_mat = sum
        end
    end
    return norm1_mat;
end

function infnorm(vec_::AbstractMatrix{<:Number})
       norminf_mat = 0
    m, n = size(vec_)
    for i in m
        sum = 0
        for j in n
            sum += vec_[i,j]
        end
        if sum > norminf_mat
            norminf_mat = sum
        end
    end
    return norminf_mat;
end

function isleap(year)
    if (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
        return true;
    else
        return false;
    end
end

function chesscolor(cell1, cell2)
    kluch = Dict('a' => 1, 'b' => 2, 'c' => 3, 'd' => 4, 'e' => 5, 'f' => 6, 'g' => 7, 'h' => 8)
    if ((kluch[cell1[1]] + kluch[cell2[1]] + cell1[2] + cell2[2]) % 2) == 0 
        return true;
    else
        return false;
    end
end
