      subroutine foo(x,z)
      integer x
      integer z(10)
!$omp simd reduction(max:x)
      do i=1,10
        x=max(x,z(i))
      enddo
      end

      interface
        subroutine foo(x,z)
        integer x
        integer z(10)
        end subroutine 
      end interface
      integer a/0/,b/0/
      integer c(10)/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
        a=max(a,c(i))
      enddo
      call foo(b,c)
      if (a.ne.b) then
        print*,"NG:",a,b
        stop 1
      endif
      print*,"OK"
      end
