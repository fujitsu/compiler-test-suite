      program main
      integer a(10000),b,c(10000)

      do i=1,10000
        a(i) = i
      enddo

      do i=1,10000
        b = a(i)
        c(i) = b
      enddo

      call sub2(a,c)

      print*, a(1),a(10000)
      print*, c(1),c(10000)

      end

      subroutine sub2(a,c)
      integer a(10000),c(10000)

      do i=1,10000
        a(i) = c(i) * 2
      enddo

      return
      end
