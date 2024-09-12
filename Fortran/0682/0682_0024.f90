      subroutine foo(x,y,n)
      integer x,y(n)
!$omp ordered simd
      do i=1,n
        x=x+y(i)
      enddo
!$omp end ordered
      end
      program main
      integer x,y(1000)
      x = 0
      y = 1
      call foo(x,y,1000)
      if (x.eq.1000) then
         print *, "PASS"
      else
         print *, "NG:", x
      endif
      end program main
