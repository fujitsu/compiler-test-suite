      subroutine foo()
      real*4 z(10)/1.0_4,2.0_4,3.0_4,4.0_4,5.0_4,
     &              6.0_4,7.0_4,8.0_4,9.0_4,10.0_4/
      real*4 x/10.0_4/,y/10.0_4/
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
