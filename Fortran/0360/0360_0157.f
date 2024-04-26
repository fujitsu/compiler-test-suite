      real*8 a(10),b(10),c(10)
      data a/10*0/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/

      call sub1()
      end

      subroutine sub1()
      integer*8 i
      real*8 a(10),b(10),c(10)
      real*4 a4(10),b4(10),c4(10)
      data a/10*0/,b/10*20/
      data c/1,2,3,4,5,6,7,8,9,10/
      data a4/10*0/,b4/10*20/
      data c4/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         a(i) = sin(b(i)) + cos(c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) = log(b(i)) + exp(c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) = sqrt(b(i)) 
      enddo
      write(6,*) a
      do i=1,10
         a4(i) =  2/sqrt(c4(i)) +atan2(b4(i),c4(i))
      enddo
      write(6,*) a4
      do i=1,10
         a4(i) =  sin(b4(i))
         a(i) =   sin(b(i))
      enddo
      write(6,*) a4,a
      end
