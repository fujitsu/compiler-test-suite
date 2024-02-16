      call sub1(100)
      end

      subroutine sub1(m)
      integer a(200)/200*0/
      integer b(200)/200*1/
      integer m

      do i=1,100
        a(i) = a(i+m) + b(i)
      enddo
      if (a(100).eq.1) then
         if (a(101).eq.0) then
            print*, "OK"
         else
            print*, "NG"
         endif
      else
         print*, "NG"
      endif
      return
      end
