      real*4 a4(10,10),b4(10,10),c4(10,10)
      real*8 a8(10,10),b8(10,10),c8(10,10)
      data a4/20*1,20*2,20*3,20*1,20*2/
      data b4/20*2,20*3,20*1,20*2,20*3/
      data c4/20*3,20*1,20*2,20*3,20*1/
      data a8/20*1,20*2,20*3,20*1,20*2/
      data b8/20*2,20*3,20*1,20*2,20*3/
      data c8/20*3,20*1,20*2,20*3,20*1/
      integer n2,n9

      call sub(n2,n9)
      do j=1,n9
        do k=1,n9
          do i=1,n9
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=n2,10
        do k=n2,10
          do i=n2,10
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8      

      do j=n2,n9
        do k=n2,n9
          do i=n2,n9
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4
      end

      subroutine sub(n2,n9)
      n2=2
      n9=9
      return
      end
