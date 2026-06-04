      subroutine foo()
      integer i
      integer*1 z(10)/1_1,2_1,3_1,4_1,5_1,6_1,7_1,8_1,9_1,10_1/
      integer*1,allocatable::x
      integer*1 y
      allocate(x)
      x=0_1
      y=x
!$omp simd reduction(ior:x)
      do i=1,10
        x=ior(x,z(i))
      enddo
      do i=1,10
        y=ior(y,z(i))
      enddo
      if (x.ne.y) then
        print*,"NG:",x,y
        stop 1
      endif
      print*,"OK"
      end

      call foo()
      end
