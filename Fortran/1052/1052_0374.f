      subroutine foo()
      integer i
      integer z(10)/1,2,3,4,5,6,7,8,9,10/
      integer,allocatable::x
      integer y
      allocate(x)
      x=0
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
