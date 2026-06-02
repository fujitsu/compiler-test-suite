      subroutine foo()
      integer i
      integer*2 z(10)/1_2,2_2,3_2,4_2,5_2,6_2,7_2,8_2,9_2,10_2/
      integer*2 x(10)/10*5_2/,y(10)/10*5_2/
!$omp simd reduction(min:x)
      do i=1,10
        x(i)=min(x(i),z(i))
      enddo
      do i=1,10
        y(i)=min(y(i),z(i))
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
