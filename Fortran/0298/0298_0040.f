      call sub1()
      call sub2()
      end
      subroutine sub1()
      real*8 a(10,10),b(10,10),c(10,10)
      a=100
      b=100
      c=100
      do j=1,10
        do k=1,10
          do i=1,10
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo
      print *,c
      end subroutine
      subroutine sub2()
      real*8 a(10,10),b(10,10),c(10,10)
      a=100
      b=100
      c=100
      do j=1,10
        do k=1,10
          do i=1,10
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo
      print *,c
      end subroutine
      subroutine sub3()
      real*8 a(10,10),b(10,10),c(10,10)
      a=100
      b=100
      c=100
      do j=1,10
        do k=1,10
          do i=1,10
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo
      print *,c
      end subroutine
      subroutine sub4()
      real*8 a(10,10),b(10,10),c(10,10)
      a=100
      b=100
      c=100
      do j=1,10
        do k=1,10
          do i=1,10
            c(i,j)=c(i,j)+a(i,k)*b(k,j)
          enddo
        enddo
      enddo
      print *,c
      end subroutine

