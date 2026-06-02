      subroutine foo()
      integer i
      complex*8::x(100),y(100)
      x=cmplx(10.0_4, 10.0_4)
      y=x
!$omp simd reduction(*:x)
      do i=1,100
        x(i)=x(i)*cmplx(2.0_4, 3.0_4)
      enddo
      do i=1,100
        y(i)=y(i)*cmplx(2.0_4, 3.0_4)
      enddo
      do i=1,100
        if (x(i).ne.y(i)) then
          print*,"NG",i,x(i),y(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end

      call foo()
      end
