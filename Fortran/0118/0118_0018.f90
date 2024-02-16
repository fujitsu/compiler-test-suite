      call sub1(1)
      end

      subroutine sub1(n) 
      real a(100)/100*0.0/
      real b(100)/100*1.0/
      integer n

      do i=1,100
        a(i*n) = a(i*n) + b(i)
      enddo

      if (a(50).eq.1.0) then
        print*, "OK"
      else
        print*, "NG"
      endif

      return
      end
