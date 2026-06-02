      subroutine foo(x,y)
      logical*4 x,y(10)
!$omp simd reduction(.neqv.:x)
      do i=1,10
        x=x.neqv.y(i)
      enddo
      end

      interface
        subroutine foo(x,y)
        logical*4 x,y(10)
        end subroutine
      end interface
      logical*4 r1/.true./,r2/.true./
      logical*4 x(10)/.true.,.false.,.true.,.false.,.true.,
     &                .false.,.true.,.false.,.true.,.false./
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
