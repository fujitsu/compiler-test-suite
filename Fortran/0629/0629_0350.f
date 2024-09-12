      real*4 a4(10,10),b4(10,10),c4(10,10)
      real*8 a8(10,10),b8(10,10),c8(10,10)
      data a4/20*1,20*2,20*3,20*1,20*2/
      data b4/20*2,20*3,20*1,20*2,20*3/
      data c4/20*3,20*1,20*2,20*3,20*1/
      data a8/20*1,20*2,20*3,20*1,20*2/
      data b8/20*2,20*3,20*1,20*2,20*3/
      data c8/20*3,20*1,20*2,20*3,20*1/
      integer n/0/

      call sub(n)
      do j=n,10
        do k=n,9
          do i=n,8
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=n,9
        do k=n,10
          do i=n,8
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8
      end

      subroutine sub(n)
      n=1
      return
      end
