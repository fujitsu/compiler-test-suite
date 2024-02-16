      call sub1(100)
      end

      subroutine sub1(n)
      integer n
      integer a(200)/200*0/
      integer b(200)/200*1/

      do i=1,n/2
        a(i) = a(i+n/2) + b(i)
      enddo

      if (a(50).eq.1) then
        if (a(51).eq.0) then
          print*, "OK"
        else
          print*, "NG"
        endif
      else
        print*, "NG"
      endif

      return
      end
