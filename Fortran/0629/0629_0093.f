      program main
      integer a(10000),b,c(10000),x

      call sub(x)

      do i=1,10000
        a(i) = x
        b = a(i)
        c(i) = b
      enddo

      call sub2(a,b,c)

      print*, a(1),a(10000)
      print*, c(1),c(10000)

      end

      subroutine sub(x)
      integer x

      x = 100
      return
      end

      subroutine sub2(a,b,c)
      integer a(10000),b,c(10000),t

      do i=1,10000
        a(i) = b
        t = a(i) + 1
        c(i) = t
      enddo

      return
      end
