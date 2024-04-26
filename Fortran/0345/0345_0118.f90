      subroutine sub(p,n)
       integer(4)::p(n)
       do i=1,n
         p(i)=i
       enddo
      end subroutine

      program main
       integer(4),pointer::p(:)
       interface
         subroutine sub(p,n)
          integer(4)::p(n)
         end subroutine
       end interface
        allocate(p(3))
        call sub(p,3)
        if (any(p/=(/1,2,3/))) print *,p
        deallocate(p)
        print *,'pass'
      end program
