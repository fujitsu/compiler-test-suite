      real*4 a4(11,10),b4(11,10),c4(11,10)
      real*8 a8(11,10),b8(11,10),c8(11,10)
      data a4/110*2./,a8/110*3./
      data b4/110*2./,b8/110*3./
      data c4/110*0/,c8/110*0/

      do j=1,10
        do k=1,10
          do i=1,10
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=1,10
        do k=1,10
          do i=1,10
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8

      end

