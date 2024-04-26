      subroutine sub(p)
       integer(4),dimension(:),save,allocatable,target::t
       integer(4),pointer::p(:)
       allocate(t(3))
        t=(/1,2,3/)
        p=>t
      end subroutine

      program main
       integer(4),pointer::p(:)
       interface
         subroutine sub(p)
          integer(4),pointer::p(:)
         end subroutine
       end interface
        call sub(p)
        if (any(p/=(/1,2,3/))) print *,p
        print *,'pass'
      end program
