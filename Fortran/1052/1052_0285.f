      subroutine foo()
      integer i
      integer*2,allocatable::x(:)
      integer*2::y(100)
      allocate(x(100)) 
      x=10
      y=10 
!$omp simd reduction(+:x)
      do i=1,100
        x(i)=x(i)+1_2
      enddo
      do i=1,100
        y(i)=y(i)+1_2
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
