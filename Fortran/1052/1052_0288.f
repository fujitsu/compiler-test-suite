      integer*4 x
      integer*4,allocatable::y
      allocate(y)
      x=10
      y=x
      do i=1,100
        x=x+i
      enddo
!$omp simd reduction(+:y)
      do i=1,100
        y=y+i
      enddo
      if (x .ne. y) then
        print*,"NG", x, y 
        stop 1
      endif
      print*,"OK"
      end
