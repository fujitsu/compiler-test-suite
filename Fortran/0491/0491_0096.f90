        parameter(n2=20,n3=30)
        real(8) :: a(n2, n3), b(n3, n2), c(n2, n2)
        a = 1.0_8; b = 1.0_8
        c =  matmul(a, b)
        if (c(1, 1) /=30) print *,201
        print *,'pass'
        end
