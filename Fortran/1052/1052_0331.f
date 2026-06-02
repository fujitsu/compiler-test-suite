      complex*32,allocatable::x,y
      allocate(x,y)
      x=(1.0_16,1.0_16)
      y=(1.0_16,1.0_16)
      do i=1,12
        x=x*cmplx(i,i,16)
      enddo
!$omp simd reduction(*:y)
      do i=1,12
        y=y*cmplx(i,i,16)
      enddo
      if (x .ne. y) then
        print*,"NG", x, y 
        stop 1
      endif
      print*,"OK"
      end
