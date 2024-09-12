      parameter (n=300)
      logical*8 a(n+1,n),b(n+1,n),c(n+1,n)

      a=.true.
      b=.true.
      c=.false.

      do j=1,n
        do k=1,n
          do i=1,n
            c(i,j)=c(i,j).OR.(a(i,k).AND.b(k,j))
          enddo
        enddo
      enddo

      print*,n,c(1,1),c(n,n)
      end
