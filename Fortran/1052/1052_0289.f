      subroutine foo()
      integer i
      integer*4::x(100),y(100)
      x=10
      y=10 
!$omp simd reduction(+:x)
      do i=1,100
        x(i)=x(i)+1
      enddo
      do i=1,100
        y(i)=y(i)+1
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
