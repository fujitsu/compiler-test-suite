      program main
      integer a(10000),b,j

      call sub1(j,a,b)

      do i=1,10000
         j = j + b
         a(i) = j
      enddo

      call sub2(a)

      print*, a(1),a(10000)
      end

      subroutine sub1(j,a,b)
      integer a(10000),b,j

      a = 0
      b = 1
      j = 2

      return
      end

      subroutine sub2(a)
      integer a(10000)

      a = a + 1

      return
      end
