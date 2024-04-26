      parameter (m1=10,m2=40160)
      real*8 b(m1,m2),x
      common /z/b,x
      x=0
      do i=1,m2
      do j=1,m1
       b(j,i)=i+j 
      enddo
      enddo
      do i=1,1
        call sub(m2)
      enddo
      write(6,*) x
      write(6,*) "OK"
      end

      subroutine sub(n)
      parameter (m1=10,m2=40160)
      real*8 b(m1,m2),x
      common /z/b,x
      integer*4 n
      do i=1,n
        x=x+b(1,i)*b(2,i)*b(3,i)*b(4,i)*
     *    b(5,i)*b(6,i)*b(7,i)*b(8,i)
      enddo
      return
      end

