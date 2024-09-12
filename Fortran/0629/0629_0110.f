      program main
      real    r1(10),r2(10),r(10)
      complex c1(10),c2(10),c(10)

      call sub1(r,c)
      do i=1,10
         r1(i) = r(2)
         c1(i) = c(2)
         r2(i) = r(3)
         c2(i) = c(3)
      enddo
      print *,r1,r2
      print *,c1,c2
      end

      subroutine sub1(r,c)
      real    r(10)
      complex c(10)

      c = (0.0,0.0)
      do i=1,10
        r(i) = i * 1.1
        c(i) = i*1.01
      enddo

      return
      end
