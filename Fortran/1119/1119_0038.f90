    complex(4)::j
    complex(4)::p , o
    p=2
    o=2
    j=10
    !$omp atomic capture
    p=p+j%im
    o=p
    !$omp end atomic
end
