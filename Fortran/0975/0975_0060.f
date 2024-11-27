      parameter (n=2000)
      real*8 a(n),b(n),c(n,n),d(n,n)

      a = 1.0
      c = 2.0

      do i = 1,n
         b(i) = a(i) 
      enddo

      do i = 1,n
         do j = 1,n
            d(j,i) = c(j,i) 
         enddo
      enddo

      print *,b(n),d(n,n)

      end
