      subroutine foo()
      integer i
      integer*4 z(10)/1_4,2_4,3_4,4_4,5_4,6_4,7_4,8_4,9_4,10_4/
      integer*4,allocatable::x(:) 
      integer*4 y(10)/10*5_4/
      allocate(x(10))
      x=5_4
!$omp simd reduction(max:x)
      do i=1,10
        x(i)=max(x(i),z(i))
      enddo
      do i=1,10
        y(i)=max(y(i),z(i))
      enddo
      do i=1,10
        if (x(i).ne.y(i)) then
          print*,"NG:",i,x(i),y(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end

      call foo()
      end
