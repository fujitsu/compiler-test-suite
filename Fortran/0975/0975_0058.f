      parameter (n=4000)
      real*8 a(n,n),b(n,n)

      a = 1.0
      b = 2.0

      do j=1,n
         do i=1,n
            a(i,j)=b(j,i)
         enddo
      enddo

      print *,a(n,n)

      end
