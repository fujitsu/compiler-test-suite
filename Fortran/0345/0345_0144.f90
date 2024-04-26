      program main
       integer(4),pointer,dimension(:)::pp
        allocate(pp(2))
        pp=(/1,2/)
        call sub(pp,2)
        print *,'pass'
      end program

      subroutine sub(qq,n)
       integer(4),dimension(n)::qq
        if (any(qq/=(/1,2/))) print *,'error'
      end subroutine
