      real*4  a(20,20)
      a = 1
      do i=1,20
         call sub1(a(i,1))
      enddo
      write(6,*) a
      END                 

      subroutine sub1(aa)
      real*4 aa(20)
      do i=1,20
         aa(i) = i
      enddo
      return
      end
