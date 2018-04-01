function my_sum(x)
    X = 0
    for i = 1:length(x)
        X += x[i]
    end
    return X 
end

function my_m(x)
    return 1/length(x) * my_sum(x) 
end

function my_cov(x,y)
    if length(x) != length(y)
        print("error!")
    else
    mat2 = 1/(length(x) -1) * my_sum((x-my_m(x)) .* (y - my_m(y))) 
    end
    return mat2
end

function my_var(x)
        return my_cov(x,x)
end

function my_covM(x)
    m1 = x[:,1]
    m2 = x[:,2]
    vm1, vm2 = my_var(m1), my_var(m2)
    c = my_cov(m1, m2)
    return [vm1 c; c vm2]
end