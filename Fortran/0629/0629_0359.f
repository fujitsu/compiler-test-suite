      real*4 a4(-1:8,9),b4(0:10,7),c4(10,-2:9)
      real*8 a8(-1:8,9),b8(0:10,7),c8(10,-2:9)
      data a4/90*2/,b4/77*3/,c4/120*4/
      data a8/90*2/,b8/77*3/,c8/120*4/
      integer n1,n2,n3,n4,n5,n6

      call sub(n1,n2,n3,n4,n5,n6)
      do j=1,7
        do k=n3,n4
          do i=n5,n6
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do k=1,n2
        do j=n3,7
          do i=n1,n6
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8      
      end

      subroutine sub(n1,n2,n3,n4,n5,n6)
      n1=1
      n2=7
      n3=2
      n4=5
      n5=3
      n6=6
      return
      end
