      program main
      parameter (m1=10,m2=40160)
      real*8 b(m1,m2),x
      common /z/b,x
      x=0
      do i=1,m2
      do j=1,m1
       b(j,i)=i+j 
      enddo
      enddo
      do i=1,30
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
        x=x+b(1,i)
      enddo
      return
      end
