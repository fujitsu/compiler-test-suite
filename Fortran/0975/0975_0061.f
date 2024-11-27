      parameter (n=2000)
      real*8 a(n,n),b(n,n),c(n,n),d(n,n)

      a = 3.0
      c = 5.0

      do i = 1,n
         do j = 1,n
            b(i,j) = a(j,i) 
         enddo
      enddo

      print *,b(n,n)

      do ii = 1,n
         do jj = 1,n
            d(jj,ii) = c(jj,ii) 
         enddo
      enddo

      print *,d(n,n)

      end
