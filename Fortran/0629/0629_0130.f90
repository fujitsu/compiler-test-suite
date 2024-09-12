       subroutine case3(a, b, c, n, k)
       end
       subroutine intr3(a, b, c, n, k)
       real a(n,k), b(k), c(n)
       do i = 1, n
         c(i) = sum(a(i,:))
       end do
       print*, c
       end
       program main
       real mat1(10,10),mat2(10),a1(10),a2(10)
       data mat1,mat2/100*1.,10*2./
       call intr3(mat1,mat2,a2,10,10)
       end
