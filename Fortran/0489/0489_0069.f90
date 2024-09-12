 function add2(a,b,i,fact,alc) result(c)
            !$omp declare simd(add2) uniform(a,b,fact)
            integer :: i
           integer,pointer::alc
            double precision :: a(*),b(*),fact,c
            c = a(i) + b(i) + fact
        end function

print *,'pass'
end

