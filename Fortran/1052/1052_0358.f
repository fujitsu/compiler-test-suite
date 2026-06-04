      subroutine foo()
      integer i
      integer*2 x(100),y(100)
      x=NOT(0_1)
      y=x
!$omp simd reduction(ieor:x)
      do i=1,100
        x(i)=ieor(x(i),int(i,2))
      enddo
      do i=1,100
        y(i)=ieor(y(i),int(i,2))
      enddo
      do i=1,100
        if (x(i).ne.y(i)) then
          print*,"NG:",i,x(i),y(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end

      call foo()
      end
