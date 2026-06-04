      integer a(5,5),b(5,5)
      integer,pointer::n
      integer,target::m
      interface
        subroutine sub(a,n)
        integer,pointer::n
        integer a(n,n)
        end subroutine
        subroutine sub0(a,n)
        integer,pointer::n
        integer a(n,n)
        end subroutine
      end interface
      m=5
      n=>m
      a=1
      b=1
      call sub(a,n)
      call sub0(b,n)
      call check(a,b,m)
      end

      subroutine sub(a,n)
      integer,pointer::n
      integer a(n,n)
!$omp parallel do collapse(2) 
      do j=1,n
        do i=1,n
          a(i,j)=a(i,j)+1
        enddo
      enddo
      end

      subroutine sub0(a,n)
      integer,pointer::n
      integer a(n,n)
      do j=1,n
        do i=1,n
          a(i,j)=a(i,j)+1
        enddo
      enddo
      end

      subroutine check(a,b,n)
      integer a(n,n),b(n,n)
      do j=1,n
        do i=1,n
          if (a(i,j) .ne. b(i,j)) then
            print*,"NG"
            call exit
          endif
        enddo
      enddo
      print*,"OK"
      end
