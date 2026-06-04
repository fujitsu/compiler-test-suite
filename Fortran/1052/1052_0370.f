      subroutine foo()
      integer i
      integer*1 z(10)/1_1,2_1,3_1,4_1,5_1,6_1,7_1,8_1,9_1,10_1/
      integer*1 x(10)/10*5_1/,y(10)/10*5_1/
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
