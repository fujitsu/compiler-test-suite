      subroutine foo(x)
      integer i
      real*8 z(10)/1.0_8,2.0_8,3.0_8,4.0_8,5.0_8,6.0_8,7.0_8,
     c             8.0_8,9.0_8,10.0_8/
      real*8 x(10)
      real*8 y(10)/10*5.0_8/
      x=5.0_8
!$omp simd reduction(min:x)
      do i=1,10
        x(i)=min(x(i),z(i))
      enddo
      do i=1,10
        y(i)=min(y(i),z(i))
      enddo
      do i=1,10
        if (x(i).ne.y(i)) then
          print*,"NG:",i,x(i),y(i)
          stop 1
        endif
      enddo
      print*,"OK"
      end

      interface
        subroutine foo(x)
        real*8 x(10)
        end subroutine
      end interface
      real*8 a(10)
      call foo(a)
      end
