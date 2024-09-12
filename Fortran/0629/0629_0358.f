      real*4 a4(10,10),b4(10,10),c4(10,10)
      real*8 a8(10,10),b8(10,10),c8(10,10)
      data a4/20*1,20*2,20*3,20*1,20*2/
      data b4/20*2,20*3,20*1,20*2,20*3/
      data c4/20*3,20*1,20*2,20*3,20*1/
      data a8/20*1,20*2,20*3,20*1,20*2/
      data b8/20*2,20*3,20*1,20*2,20*3/
      data c8/20*3,20*1,20*2,20*3,20*1/
      integer n1,n2,n3,n4,n5,n6

      call sub(n1,n2,n3,n4,n5,n6)
      do j=1,n2
        do k=n3,9
          do i=3,10
            c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
          enddo
        enddo
      enddo
      print *,c4

      do j=n1,9
        do k=1,n4
          do i=n5,n6
            c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
          enddo
        enddo
      enddo
      print *,c8      
      end

      subroutine sub(n1,n2,n3,n4,n5,n6)
      n1=1
      n2=10
      n3=2
      n4=9
      n5=3
      n6=8
      return
      end
