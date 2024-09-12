      program main
      real a(10000),b(10000),c(10000)
      complex a2(10000),b2(10000),c2(10000)

      call sub1(a,b,c)
      do i=1,10000
        a(5) = b(i)
        c(i) = a(5)
      enddo
      call sub2(c)

      print*, a(5),b(5),c(5)

      a2 = (0.0,0.0)
      b2 = (0.0,1.1)
      c2 = (0.0,2.2)
      call sub3(a2,b2,c2)
      do i=1,10000
        a2(5) = b2(i)
        c2(i) = a2(5)
      enddo
      call sub4(c2)

      print*, a2(5),b2(5),c2(5)

      end

      subroutine sub1(a,b,c)
      real a(10000),b(10000),c(10000)

      do i=1,10000
        a(i) = i * 1.1
        b(i) = i * 2.2
        c(i) = i * 3.3
      enddo

      return
      end

      subroutine sub2(c)
      real c(10000)

      do i=1,10000
        c(i) = i * 1.414
      enddo

      return
      end

      subroutine sub3(a2,b2,c2)
      complex a2(10000),b2(10000),c2(10000)

      do i=1,10000
        a2(i) = i - 1.1
        b2(i) = i - 1.2  
        c2(i) = i - 1.3  
      enddo

      return
      end

      subroutine sub4(c2)
      complex c2(10000)

      do i=1,10000
        c2(i) = i * 2.236
      enddo

      return
      end
