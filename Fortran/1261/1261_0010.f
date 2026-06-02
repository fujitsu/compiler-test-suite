      module mod_xxx
      parameter(n=10)
      type xxx
        real,dimension(n,n)::r
        integer,dimension(n,n)::i
      end type xxx
      end module

      use mod_xxx
      type(xxx) a,b
      a%r=1.0
      a%i=1
      b%r=1.0
      b%i=1
      call sub(a)
      call sub0(b)
      call check(a,b)
      end

      subroutine sub(a)
      use mod_xxx
      type(xxx) a
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,n
          a%r(i,j)=a%r(i,j)+1.0
          a%i(i,j)=a%i(i,j)+1
        enddo
      enddo
      end

      subroutine sub0(a)
      use mod_xxx
      type(xxx) a
      do j=1,n
        do i=1,n
          a%r(i,j)=a%r(i,j)+1.0
          a%i(i,j)=a%i(i,j)+1
        enddo
      enddo
      end

      subroutine check(a,b)
      use mod_xxx
      type(xxx) a,b
      do j=1,n
        do i=1,n
          if ((a%r(i,j).ne.b%r(i,j)).or.(a%i(i,j).ne.b%i(i,j))) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
