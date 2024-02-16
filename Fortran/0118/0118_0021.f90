      call sub1(100,1)
      end

      subroutine sub1(m,n)
      integer a(200)/200*0/
      integer b(200)/200*1/
      integer n,m

      do i=1,100
        a(i) = a(i+m) + b(i)
        a(i*n) = a(i*n) + b(i)
      enddo
      if (a(100).eq.2) then
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
