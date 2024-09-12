      real*4 a4(10,10),b4(10,10),c4(10,10)
      real*8 a8(10,10),b8(10,10),c8(10,10),d8(10,10)
      data a4/100*2/
      data b4/100*3/
      data c4/100*4/
      data a8/100*2/
      data b8/100*3/
      data c8/100*4/
      data d8/100*4/

      do j=1,10
        do k=1,10
          do i=1,10
            c4(i,j)=a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=1,10
        do k=1,10
          do i=1,10
            c8(i,j)=d8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8

      do j=1,10
        do k=1,10
          do i=1,10
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)+3
          enddo
        enddo
      enddo
      print *,c4

      do j=1,10
        do k=1,10
          do i=1,10
            c8(i,j)=d8(i,j)+c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8

      end
