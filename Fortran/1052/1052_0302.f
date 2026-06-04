      subroutine foo(x,y)
      logical*2 x,y(10)
!$omp simd reduction(.and.:x)
      do i=1,10
        x=x.and.y(i)
      enddo
      end

      interface
        subroutine foo(x,y)
        logical*2 x,y(10)
        end subroutine
      end interface
      logical*2 r1/.true./,r2/.true./
      logical*2 x(10)/10*.true./
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
