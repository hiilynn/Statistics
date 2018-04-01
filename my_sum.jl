function my_sum(x)
    X = 0
    for i = 1:length(x)
        X += x[i]
    end
    return X 
end

x = [1 2 3]
my_sum(x)