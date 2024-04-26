      program main
       integer(4),allocatable,dimension(:)::pp
        allocate(pp(2))
        pp=(/1,2/)
        call sub(pp,2)
        if (any(pp/=(/3,3/))) print *,'error'
        print *,'pass'
      end program

      subroutine sub(qq,n)
       integer(4),dimension(n)::qq
        if (any(qq/=(/1,2/))) print *,'error'
        call sub1(qq,n)
      end subroutine

      subroutine sub1(qq,n)
       integer(4),dimension(n)::qq
       qq=qq+(/2,1/)
      end subroutine
