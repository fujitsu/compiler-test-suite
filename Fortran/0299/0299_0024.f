      real*4  a(20)
      a = 1
      do i=1,10
         call sub1(a(i),i)
      enddo
      write(6,*) a
      END                 

      subroutine sub1(aa,mm)
      real*4 aa(10)
      do i=1,mm
         aa(i) = i
      enddo
      return
      end
