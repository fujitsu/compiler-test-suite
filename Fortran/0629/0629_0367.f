      parameter(n=10)
      real*4 a4(n,n),b4(n,n),c4(n,n)
      real*8 a8(n,n),b8(n,n),c8(n,n)
      data a4/100*2/,b4/100*3/,c4/100*4/
      a8=2
      b8=3
      c8=4
      call sub1(a4,b4,c4,n)
      print *,c4
      call sub2(a8,b8,c8,n)
      print *,c8
      end

      subroutine sub1(a4,b4,c4,n)
      real*4 a4(n,n),b4(n,n),c4(n,n)
      m=2
      do j=m,n
        do k=m,n
          do i=m,n
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      return
      end

      subroutine sub2(a8,b8,c8,n)
      real*8 a8(n,n),b8(n,n),c8(n,n)
      m=2
      do j=m,n-1
        do k=m,n-1
          do i=m,n-1
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      return
      end
