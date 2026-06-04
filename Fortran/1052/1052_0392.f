      subroutine foo()
      integer i
      integer z(10)/1_4,2_4,3_4,4_4,5_4,6_4,7_4,8_4,9_4,10_4/
      integer x/5_4/,y/5_4/
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
