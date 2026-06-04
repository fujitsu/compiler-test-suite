      subroutine foo(x,y)
      integer*4,allocatable::x,y
!$omp simd reduction(+:x,y)
      do i=1,100
        x=x+i
        y=y+i
      enddo
      end

      interface
        subroutine foo(x,y)
        integer*4,allocatable::x,y
        end subroutine
      end interface 
      integer*4::a1,a2
      integer*4,allocatable::b1,b2
      allocate(b1,b2)
      a1=10
      b1=10
      a2=100
      b2=100 
      do i=1,100
        a1=a1+i
        a2=a2+i
      enddo
      call foo(b1,b2)
      if ((a1 .ne. b1).or.(a2 .ne. b2)) then
        print*,"NG", a1,b1,a2,b2
        stop 1
      endif
      print*,"OK"
      end
