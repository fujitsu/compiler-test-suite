      subroutine foo(x,y)
      real*16,allocatable::x
      complex*16,allocatable::y
!$omp simd reduction(+:x) reduction(*:y)
      do i=1,10
        x=x+real(i,16)
        y=y*cmplx(i,i,8)
      enddo
      end

      interface
        subroutine foo(x,y)
        real*16,allocatable::x
        complex*16,allocatable::y
        end subroutine
      end interface
      real*16,allocatable::a1,b1
      complex*16,allocatable::a2,b2
      allocate(a1,b1,a2,b2)
      a1=10.0_16
      b1=10.0_16
      a2=(1.0_8,1.0_8)
      b2=(1.0_8,1.0_8)
      do i=1,10
        a1=a1+real(i,16)
        a2=a2*cmplx(i,i,8)
      enddo
      call foo(b1,b2)
      if ((a1 .ne. b1).or.(a2 .ne. b2)) then
        print*,"NG", a1,b1,a2,b2
        stop 1
      endif
      print*,"OK"
      end
