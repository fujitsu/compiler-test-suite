      subroutine foo()
      real*16 z(10)/1.0_16,2.0_16,3.0_16,4.0_16,5.0_16,
     &              6.0_16,7.0_16,8.0_16,9.0_16,10.0_16/
      real*16 x/10.0_16/,y/10.0_16/
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
