      subroutine foo(x)
      integer*4 x
!$omp simd reduction(*:x)
      do i=1,12
        x=x*i
      enddo
      end

      integer*4 a/1/,b/1/
      do i=1,12
        a=a*i
      enddo
      call foo(b)
      if (a .ne. b) then
        print*,"NG", a,b 
        stop 1
      endif
      print*,"OK"
      end
