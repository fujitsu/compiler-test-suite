      subroutine foo()
      integer i
      integer*2 z(10)/1_2,2_2,3_2,4_2,5_2,6_2,7_2,8_2,9_2,10_2/
      integer*2,allocatable::x
      integer*2 y
      allocate(x)
      x=0_2
      y=x
!$omp simd reduction(max:x)
      do i=1,10
        x=max(x,z(i))
      enddo
      do i=1,10
        y=max(y,z(i))
      enddo
      if (x.ne.y) then
        print*,"NG:",x,y
        stop 1
      endif
      print*,"OK"
      end

      call foo()
      end
