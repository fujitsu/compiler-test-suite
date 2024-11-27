      parameter (n=2000)
      real*8 a(n,n),b(n,n),c(n,n)

      a = 1.0
      b = 2.0
      c = 3.0

      do j=1,n
         do i=1,n
            a(i,j)=sin(b(j,i))+c(j,i)
         enddo
      enddo

      print *,a(n,n)

      end
