      subroutine foo(x,y)
      logical*4,allocatable::x
      logical*4 y(10)
!$omp simd reduction(.and.:x)
      do i=1,10
        x=x.and.y(i)
      enddo
      end

      interface
        subroutine foo(x,y)
        logical*4,allocatable::x
        logical*4 y(10)
        end subroutine
      end interface
      logical*4,allocatable::r1,r2
      logical*4 x(10)/10*.true./
      allocate(r1,r2)
      r1=.true.
      r2=.true.
      call foo(r1,x)
      do i=1,10
        r2=r2.and.x(i)
      enddo
      if (r1.neqv.r2) then
        print*,"NG:",r1,r2
        stop 1
      endif
      print*,"OK"
      end
