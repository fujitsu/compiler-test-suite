      subroutine foo()
      integer i
      real*16 z(10)/1.0_16,2.0_16,3.0_16,4.0_16,5.0_16,6.0_16,7.0_16,
     c             8.0_16,9.0_16,10.0_16/
      real*16 x(10)/10*5.0_16/,y(10)/10*5.0_16/
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
