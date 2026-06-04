      subroutine foo(x)
      integer i
      complex*16,allocatable::x(:) 
      complex*16::y(100)
      x=cmplx(10.0_8, 10.0_8)
      y=x
!$omp simd reduction(*:x)
      do i=1,100
        x(i)=x(i)*cmplx(2.0_8, 3.0_8)
      enddo
      do i=1,100
        y(i)=y(i)*cmplx(2.0_8, 3.0_8)
      enddo
      do i=1,100
        if (x(i).ne.y(i)) then
          print*,"NG",i,x(i),y(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end

      interface
        subroutine foo(x)
        complex*16,allocatable::x(:)
        end subroutine
      end interface
      complex*16,allocatable::a(:)
      allocate(a(100))
      call foo(a)
      end
