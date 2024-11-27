   INTEGER, PARAMETER :: wp = kind(0.0d0)
   REAL(WP), ALLOCATABLE :: a(:,:), b(:,:), c(:,:)
   INTEGER :: n, m
   n = 2
   DO m = n, 0, -1
     ALLOCATE (a(n,n),b(n,m),c(m,m))
     a= 1.0_wp
     b= m+1.0_wp
     write(1,*)
     write(1,*) " m, n", m, n
     write(1,*) " SHAPE(a) =           ", SHAPE(a)
     write(1,*) " SHAPE(b) =           ", SHAPE(b)
     write(1,*) " SHAPE(c) =           ", SHAPE(c)
     write(1,*) " SHAPE(MATMUL(a,b)) = ", SHAPE(MATMUL(a,b))
     write(1,*) " SHAPE(transpose(b))= ", SHAPE(transpose(b))
     c = MATMUL(TRANSPOSE(b),MATMUL(a,b))
     write(1,*) "  SUM(MATMUL(TRANSPOSE(b),MATMUL(a,b))", SUM(c)
     DEALLOCATE (a,b,c)
   END DO
   print *,'pass'
   END

