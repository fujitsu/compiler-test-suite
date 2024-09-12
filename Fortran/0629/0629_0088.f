      program main
      integer a(10000),b,c

      call sub1(b)

      do i=1,10000
         a(i)=b
         c=a(i)
      enddo

      call sub2(a,c,i)

      print*, c,a(1),a(10000)

      end

      subroutine sub1(b)
      integer b
      b = 2
      return
      end

      subroutine sub2(a,c,i)
      integer a(10000),c,i

      a(1) = i
      a(10000) = c

      return
      end
