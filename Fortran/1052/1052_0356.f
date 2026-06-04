      subroutine foo()
      integer i
      integer*8 z(10)/1_8,2_8,3_8,4_8,5_8,6_8,7_8,8_8,9_8,10_8/
      integer*8 x(10),y(10)
      do i=1,10
        x(i)=NOT(0_8)
        y(i)=x(i)
      enddo
!$omp simd reduction(iand:x)
      do i=1,10
        x(i)=iand(x(i),z(i))
      enddo
      do i=1,10
        y(i)=iand(y(i),z(i))
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
