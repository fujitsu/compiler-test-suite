      program main
      integer a(10000),b
      common /com1/b

      call sub1(b)

      do i=1,10000
        a(i)=b+i
      enddo

      call sub2(a,b)

      print*, a(1),a(10000)
      print*, b

      end

      subroutine sub1(b)
      integer b
      b = 2
      return
      end

      subroutine sub2(a,b)
      integer a(10000),b

      a(1) = b + 1
      a(10000) = b

      return
      end
