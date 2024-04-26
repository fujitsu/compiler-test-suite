      parameter(n=10)
      real*4 a1(n,n),b1(n,n),c1(n,n)
      a1=2.
      b1=3.
      c1=4.
      do j=1,10
        do k=1,10
          do i=1,10
            c1(i,j)=c1(i,j)+a1(i,k)*b1(k,j)
          enddo
        enddo
      enddo
      print *,c1

      end
