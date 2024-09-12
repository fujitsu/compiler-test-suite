      program main
      integer a(10000),b
      call sub1(b)

      do i=1,10000
         a(i)=b
         if (i.le.10) c=a(i)
      enddo

      call sub2(a,c)

      print*, c,a(1),a(10000)

      end

      subroutine sub1(b)
      integer b
      b = 2
      return
      end

      subroutine sub2(a,c)
      integer a(10000)

      a(1) = c * 2
      a(10000) = c

      return
      end
