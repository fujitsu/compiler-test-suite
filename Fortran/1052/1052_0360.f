      subroutine foo()
      integer i
      integer*8 x,y
      x=NOT(0_1)
      y=x
!$omp simd reduction(ieor:x)
      do i=1,100
        x=ieor(x,int(i,8))
      enddo
      do i=1,100
        y=ieor(y,int(i,8))
      enddo
      if (x.ne.y) then
        print*,"NG:",x,y
        stop 1
      endif
      print*,"OK"
      end

      call foo()
      end
