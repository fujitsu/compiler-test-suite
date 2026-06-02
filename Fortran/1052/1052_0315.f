      subroutine foo(x,y)
      logical*2,allocatable::x
      logical*2 y(10)
!$omp simd reduction(.neqv.:x)
      do i=1,10
        x=x.neqv.y(i)
      enddo
      end

      interface
        subroutine foo(x,y)
        logical*2,allocatable::x
        logical*2 y(10)
        end subroutine
      end interface
      logical*2,allocatable::r1,r2
      logical*2 x(10)/.true.,.false.,.true.,.false.,.true.,
     &                .false.,.true.,.false.,.true.,.false./
      allocate(r1,r2)
      r1=.true.
      r2=.true.
      call foo(r1,x)
      do i=1,10
        r2=r2.neqv.x(i)
      enddo
      if (r1.neqv.r2) then
        print*,"NG:",r1,r2
        stop 1
      endif
      print*,"OK"
      end
