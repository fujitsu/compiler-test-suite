      program main
      real    a(10),b(10)
      complex c(10),d(10)

      call sub1(a,b)
      do i=1,10
         a(2) = b(i)
      enddo
      print *,a,b

      call sub2(c,d)
      do i=1,10
         c(2) = d(i)
      enddo
      print *,c,d
      end

      subroutine sub1(a,b)
      real    a(10),b(10)

      do i=1,10
        a(i) = i * 1.1
        b(i) = i * 1.23
      enddo
      return
      end

      subroutine sub2(c,d)
      complex c(10),d(10)

      c = (0.0,0.0)
      d = (0.0,0.0)
      do i=1,10
        c(i) = i * 1.2
        d(i) = i * 2.3
      enddo
      return
      end
