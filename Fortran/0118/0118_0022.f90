      call sub1(1)
      end

      subroutine sub1(n) 
      real a(100,10)/1000*0.0/
      real b(100,10)/1000*1.0/
      integer n

      do j=1,10
        do i=1,100
          a(i*n,j) = a(i*n,j) + b(i,j)
        enddo
      enddo

      if (a(50,1).eq.1.0) then
        print*, "OK"
      else
        print*, "NG"
      endif

      return
      end
