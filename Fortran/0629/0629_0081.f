      parameter (n=1000)
      real*8 a(n+1,n),b(n+1,n),c(n+1,n)

      do j=1,n
        do i=1,n
          a(i,j)=1.0d0
          b(i,j)=1.0d0
          c(i,j)=0.0d0
        enddo
      enddo

      do j=1,n
        do k=1,n
          do i=1,n
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo

      write(6,600) n,c(1,1),c(n,n)
600   format(i10/f12.1/f12.1)
      end
