      real*4 a1(10,10),b1(10,10),c1(10,10)
      real*4 a2(10,10),b2(10,10),c2(10,10)
      real*4 a3(10,10),b3(10,10),c3(10,10)
      data a1,a2,a3/100*2,100*2,100*2/
      data b1,b2,b3/100*3,100*3,100*3/
      data c1,c2,c3/100*4,100*4,100*4/
      integer n1,n2      

      call sub(n1,n2)
      do i=n1,n2
        do j=n1,n2
          do k=n1,n2
            c1(i,j)=c1(i,j)+a1(i,k)*b1(k,j)
          enddo
        enddo
      enddo
      print *,c1

      do j=n1,n2
        do i=n1,n2
          do k=n1,n2
            c2(i,j)=c2(i,j)+a2(i,k)*b2(k,j)
          enddo
        enddo
      enddo
      print *,c2

      do i=n1,n2
        do k=n1,n2
          do j=n1,n2
            c3(i,j) = c3(i,j)+a3(i,k)*b3(k,j)
          enddo
        enddo
      enddo
      print *,c3

      do j=n1,n2
        do k=n1,n2
          do i=n1,n2
            c1(i,j) = c1(i,j)+a1(i,k)*b1(k,j)
          enddo
        enddo
      enddo
      print *,c1

      do k=n1,n2
        do j=n1,n2
          do i=n1,n2
            c2(i,j) = c2(i,j)+a2(i,k)*b2(k,j)
          enddo
        enddo
      enddo
      print *,c2

      do k=n1,n2
        do i=n1,n2
          do j=n1,n2
            c3(i,j) = c3(i,j)+a3(i,k)*b3(k,j)
          enddo
        enddo
      enddo
      print *,c3
      end

      subroutine sub(n1,n2)
      n1=2
      n2=9
      return
      end
