      subroutine foo()
      integer i
      integer*1::x(12),y(12)
      x=10_1
      y=10_1
!$omp simd reduction(*:x)
      do i=1,12
        x(i)=x(i)*int(i,1)
      enddo
      do i=1,12
        y(i)=y(i)*int(i,1)
      enddo
      do i=1,12
        if (x(i).ne.y(i)) then
          print*,"NG",i,x(i),y(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end

      call foo()
      end
