      subroutine foo()
      integer i
      integer*4,allocatable::x
      integer*4 y
      allocate(x)
      x=NOT(0_4)
      y=x
!$omp simd reduction(ieor:x)
      do i=1,100
        x=ieor(x,int(i,4))
      enddo
      do i=1,100
        y=ieor(y,int(i,4))
      enddo
      if (x.ne.y) then
        print*,"NG:",x,y
        stop 1
      endif
      print*,"OK"
      end

      call foo()
      end
