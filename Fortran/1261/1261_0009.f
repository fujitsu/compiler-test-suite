      module mod_xxx
      type xxx
        real r
        integer i
      end type xxx
      end module

      use mod_xxx
      parameter(n=10)
      dimension a(n,n),b(n,n)
      type(xxx) a,b
      a=xxx(1.0,1)
      b=xxx(1.0,1)
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,n)
      end

      subroutine sub(a,n) 
      use mod_xxx
      dimension a(n,n)
      type(xxx) a
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,n
          a(i,j)%r=a(i,j)%r+1.0
          a(i,j)%i=a(i,j)%i+1
        enddo
      enddo
      end

      subroutine sub0(a,n)
      use mod_xxx
      dimension a(n,n)
      type(xxx) a
      do j=1,n
        do i=1,n
          a(i,j)%r=a(i,j)%r+1.0
          a(i,j)%i=a(i,j)%i+1
        enddo
      enddo
      end

      subroutine check(a,b,n)
      use mod_xxx
      dimension a(n,n),b(n,n)
      type(xxx) a,b
      do j=1,n
        do i=1,n
          if ((a(i,j)%r.ne.b(i,j)%r).or.(a(i,j)%i.ne.b(i,j)%i)) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
