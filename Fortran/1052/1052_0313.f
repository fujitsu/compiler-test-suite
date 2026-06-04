      subroutine foo(x,y)
      logical*8 x,y(10)
!$omp simd reduction(.eqv.:x)
      do i=1,10
        x=x.eqv.y(i)
      enddo
      end

      interface
        subroutine foo(x,y)
        logical*8 x,y(10)
        end subroutine
      end interface
      logical*8 r1/.true./,r2/.true./
      logical*8 x(10)/.true.,.false.,.true.,.false.,.true.,
     &                .false.,.true.,.false.,.true.,.false./
      call foo(r1,x)
      do i=1,10
        r2=r2.eqv.x(i)
      enddo
      if (r1.neqv.r2) then
        print*,"NG:",r1,r2
        stop 1
      endif
      print*,"OK"
      end
