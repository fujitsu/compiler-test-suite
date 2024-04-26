      integer,parameter :: n=3

      integer*1 a(n,n),b(n,n)
      integer*4 aa(n,n),c(n,n)
      a = 1
      b = 1
      aa = a

!$OMP PARALLEL
!$OMP WORKSHARE
      c = matmul(aa,b)
!$OMP END WORKSHARE
!$OMP END PARALLEL

      print *,c
      END
