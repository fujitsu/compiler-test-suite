      real*4 a4(-3:6,-2:7),b4(-4:5,-5:4),c4(-3:6,-3:6)
      real*8 a8(-3:6,-2:7),b8(-4:5,-5:4),c8(-3:6,-3:6)
      data a4/100*2/,b4/100*3/,c4/100*4/
      data a8/100*2/,b8/100*3/,c8/100*4/

      do j=-3,2
        do k=0,3
          do i=1,4
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=-3,2
        do k=0,3
          do i=1,4
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8      
      end
