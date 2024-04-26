      real*4  a(10),b(10),c(10),e(10)
      do i=1,10
         a(i) = 0
         b(i) = i
         c(i) = i
         n = i
         e(i) = i+2
      enddo

      do i=1,n
         a(i) = b(i) + 3

         write(6,*) c(i)

         e(i) = 7
      enddo
      write(6,*) a
      write(6,*) c
      write(6,*) e

      call sub1()
      
      END                      

      subroutine sub1()
      real*4  a(10),b(10),c(10),e(10)

      a = 0

      do i=1,10
         b(i) = i
         c(i) = i
         n = i
         e(i) = i+2
      enddo

      do i=1,n
         a(i) = b(i) + 3

         write(6,*) c(i)

         e(i) = 7
      enddo
      write(6,*) a
      write(6,*) c
      write(6,*) e
      return
      end
