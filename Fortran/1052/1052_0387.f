      subroutine foo()
      integer i
      real*4 z(10)/1.0_4,2.0_4,3.0_4,4.0_4,5.0_4,6.0_4,7.0_4,8.0_4,
     c             9.0_4,10.0_4/
      real*4 x(10)/10*5.0_4/,y(10)/10*5.0_4/
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
