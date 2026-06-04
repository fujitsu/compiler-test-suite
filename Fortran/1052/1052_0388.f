      subroutine foo()
      real*8 z(10)/1.0_8,2.0_8,3.0_8,4.0_8,5.0_8,
     &             6.0_8,7.0_8,8.0_8,9.0_8,10.0_8/
      real*8 x/0.0_8/,y/0.0_8/
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
