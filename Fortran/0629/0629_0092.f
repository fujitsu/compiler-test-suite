      program main
      integer a(10000),b,c(10000)

      a = 3

      do i=1,10000
         b = a(i)
         c(i) = b
      enddo

      call sub2(a,b,c)

      print*, a(1),a(10000)
      print*, b
      print*, c(500),c(5000)

      end

      subroutine sub2(a,b,c)
      integer a(10000),b,c(10000)

      do i=1,10000
         b = c(i)
         a(i) = b
      enddo

      return
      end
