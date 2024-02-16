      call sub1(50,1)
      end

      subroutine sub1(n,m)
      integer n,m
      real a(100)
      real b(100)/100*1.0/
      data a/100*0.0/

      do i=1,n
        a(i*m+1) = a(i*m+1) + b(i)
      enddo

      if (a(1).eq.0) then
        if (a(2).eq.1) then
          print*, "OK"
        else
          print*, "NG"
        endif
      else
        print*, "NG"
      endif

      return
      end
