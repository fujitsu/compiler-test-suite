      subroutine foo()
      integer i
      integer z(15)/1,2,3,4,5,6,7,8,9,10,15,14,13,12,11/
      integer x/0/,y/0/
!$omp simd reduction(max:x)
      do i=1,15
        x=max(x,z(i))
      enddo
      do i=1,15
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
