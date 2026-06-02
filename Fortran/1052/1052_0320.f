      subroutine foo(x,y)
      logical*1 x,y(10)
!$omp simd reduction(.or.:x)
      do i=1,10
        x=x.or.y(i)
      enddo
      end

      interface
        subroutine foo(x,y)
        logical*1 x,y(10)
        end subroutine
      end interface
      logical*1 r1/.false./,r2/.false./
      logical*1 x(10)/.true.,9*.false./
      call foo(r1,x)
      do i=1,10
        r2=r2.or.x(i)
      enddo
      if (r1.neqv.r2) then
        print*,"NG:",r1,r2
        stop 1
      endif
      print*,"OK"
      end
