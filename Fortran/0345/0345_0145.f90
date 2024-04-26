      program main
       integer(4),pointer,dimension(:)::pp
       interface
        subroutine sub2(qq,n)
         integer(4),pointer,dimension(:)::qq
        end subroutine
       end interface
        allocate(pp(2))
        pp=(/1,2/)
        call sub1(pp,2)
        call sub2(pp,2)
        print *,'pass'
      end program

      subroutine sub1(qq,n)
       integer(4),dimension(n)::qq
        if (any(qq/=(/1,2/))) print *,'error'
      end subroutine

      subroutine sub2(qq,n)
       integer(4),pointer,dimension(:)::qq
        if (any(qq/=(/1,2/))) print *,'error'
      end subroutine
