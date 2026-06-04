      subroutine foo()
      integer i
      integer*8 z(10)/1_8,2_8,3_8,4_8,5_8,6_8,7_8,8_8,9_8,10_8/
      integer*8,allocatable::x
      integer*8 y
      allocate(x)
      x=5_8
      y=x
!$omp simd reduction(min:x)
      do i=1,10
        x=min(x,z(i))
      enddo
      do i=1,10
        y=min(y,z(i))
      enddo
      if (x.ne.y) then
        print*,"NG:",x,y
        stop 1
      endif
      print*,"OK"
      end

      call foo()
      end
