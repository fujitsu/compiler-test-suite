      real*4 a1(10,10),b1(10,10),c1(10,10)
      real*4 a2(10,10),b2(10,10),c2(10,10)
      data a1,a2/100*2,100*2/
      data b1,b2/100*3,100*3/
      data c1,c2/100*4,100*4/
      integer n/0/

      call sub(n)
      do j=1,10,2
        do k=1,10
          do i=1,10
            c1(i,j)=c1(i,j)+a1(i,k)*b1(k,j)
          enddo
        enddo
      enddo
      print *,c1(5,5)

      do j=1,9
        do k=1,9,n
          do i=1,9
            c2(i,j)=c2(i,j)+a2(i,k)*b2(k,j)
          enddo
        enddo
      enddo
      print *,c2(5,5)
      end

      subroutine sub(n)
      n=1
      return
      end
