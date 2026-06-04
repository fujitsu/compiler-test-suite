      subroutine foo(x)
      integer i
      complex*16,allocatable::x 
      allocate(x)
      x=(20.0_8,20.0_8)
!$omp simd reduction(+:x)
      do i=1,10
        x=x+cmplx(real(i,8),real(i,8))
      enddo
      end

      interface
        subroutine foo(x)
        complex*16,allocatable::x
        end subroutine 
      end interface 
      complex*16,allocatable::a,b
      call foo(a)
      allocate(b)
      b=(20.0_8,20.0_8)
      do i=1,10
        b=b+cmplx(real(i,8),real(i,8))
      enddo
      if (a.ne.b) then
        print*,"NG"
        print*,"a:",a
        print*,"b:",b
        stop 1
      endif
      print*,"OK"
      end
