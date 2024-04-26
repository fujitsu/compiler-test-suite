      subroutine sub(i,a)
      integer(4)::a(1)
        a=a+i
      end subroutine

      program main
       integer(4)::a=1
       integer(4)::i=1
        call sub(i,a)
        print *,'pass'
      end program
