      parameter (n=1000)
      real*8 a(n,n),b(n,n),c(n,n)

      a = 3.0
      b = 4.0
      c = 7.0

      do j=1,n
         do k=1,n
            do i=1,n
               c(i,j)=c(i,j)+a(i,k)*b(k,j)
            enddo
         enddo
      enddo

      print *,c(n,n)

      end
