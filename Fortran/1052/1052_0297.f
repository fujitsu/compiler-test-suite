      subroutine foo(x)
      integer i
      real*4::x(100),y(100)
      x=10.0_4
      y=10.0_4 
!$omp simd reduction(+:x)
      do i=1,100
        x(i)=x(i)+1.0_4
      enddo
      do i=1,100
        y(i)=y(i)+1.0_4
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
        real*4::x(100)
        end subroutine
      end interface
      real*4::a(100)
      call foo(a)
      end
