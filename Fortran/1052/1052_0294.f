      real*4,allocatable::x,y
      allocate(x,y)
      x=10.0_4
      y=10.0_4
      do i=1,100
        x=x+real(i,4)
      enddo
!$omp simd reduction(+:y)
      do i=1,100
        y=y+real(i,4)
      enddo
      if (x .ne. y) then
        print*,"NG", x, y
        stop 1
      endif
      print*,"OK"
      end
