      call sub1(30)
      end

      subroutine sub1(n)
      integer n
      real a(100),x(100)
      real b(100)/100*1.0/
      equivalence(x(1),a(5))
      data a/100*0.0/

      do i=1,n
        x(i) = a(i+50) + b(i)
      enddo

      if (x(30).eq.1) then
        if (x(31).eq.0) then
          print*, "OK"
        else
          print*, "NG"
        endif
      else
        print*, "NG"
      endif
      return
      end
