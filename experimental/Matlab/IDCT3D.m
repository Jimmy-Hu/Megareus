function out = IDCT3D(X) 
    out = IDCT1D(X, 1); 
    out = IDCT1D(out, 2); 
    out = IDCT1D(out, 3);
end 

function out = IDCT1D(X, dim) 
    N = size(X, dim); 

    if (dim == 1 || dim == 2)
        alpha = cos(pi/(2*N)*(2*(0:N-1)'+1)*(0:N-1)); 
        alpha(:,1) = alpha(:,1) / sqrt(2); 
        if dim == 1
            out = pagemtimes(alpha, X);
        elseif dim == 2
            out = pagetranspose(pagemtimes(alpha, 'none', X, 'transpose'));
        end
        return;
    end

    sz = ones(1,3); 
    sz(dim) = N; 
    index = {':',':',':'}; 
    out = zeros(size(X));
    
    for n = 0:N-1
       alpha = cos(pi/(2*N)*(2*n+1)*(0:N-1)); 
       alpha(1) = alpha(1) / sqrt(2); 
       alpha = reshape(alpha, sz); 
       index{dim} = n + 1; 
       out(index{:}) = sum(X .* alpha, dim); 
    end
end