      subroutine foo(x)
      integer*1 x
!$omp simd reduction(+:x)
      do i=1,10
        x=x+int(i,1)
      enddo
      end

      integer*1 a/10/,b/10/
      do i=1,10
        a=a+int(i,1)
      enddo
      call foo(b)
      if (a .ne. b) then
        print*,"NG", a, b
        stop 1
      endif
      print*,"OK"
      end
