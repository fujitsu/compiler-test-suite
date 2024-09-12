      real*4 a4(-1:8,9),b4(0:10,7),c4(10,-2:9)
      real*8 a8(-1:8,9),b8(0:10,7),c8(10,-2:9)
      data a4/90*2/,b4/77*3/,c4/120*4/
      data a8/90*2/,b8/77*3/,c8/120*4/

      do j=1,7
        do k=2,5
          do i=2,6
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=3,7
        do k=4,7
          do i=1,6
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8      
      end
