      parameter(n=10)
      real*4 a4(n,n),b4(n,n),c4(n,n)
      real*8 a8(n,n),b8(n,n),c8(n,n)
      data a4/100*2/,b4/100*3/,c4/100*4/
      data a8/100*2/,b8/100*3/,c8/100*4/

      do j=1,10
        do k=1,9
          do i=1,8
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=1,8
        do k=1,9
          do i=1,10
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8      
      end
