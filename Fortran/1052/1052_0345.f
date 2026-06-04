      subroutine foo(x)
      integer i
      real*16,allocatable::x(:)
      real*16::y(100)
      x=10.0_16
      y=10.0_16
!$omp simd reduction(*:x)
      do i=1,100
        x(i)=x(i)*10.0_16
      enddo
      do i=1,100
        y(i)=y(i)*10.0_16
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
        real*16,allocatable::x(:)
        end subroutine
      end interface
      real*16,allocatable::a(:)
      allocate(a(100))
      call foo(a)
      end
