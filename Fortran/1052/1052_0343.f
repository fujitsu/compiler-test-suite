      subroutine foo(x)
      real*16,allocatable::x
!$omp simd reduction(*:x)
      do i=1,10
        x=x*real(i,16)
      enddo
      end

      interface
        subroutine foo(x)
        real*16,allocatable::x
        end subroutine
      end interface
      real*16,allocatable::a,b
      allocate(a,b)
      a=1.0_16
      b=1.0_16 
      do i=1,10
        a=a*real(i,16)
      enddo
      call foo(b)

      if (a .ne. b) then
        print*,"NG", a, b
        stop 1
      endif
      print*,"OK"
      end
