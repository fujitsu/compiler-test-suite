      subroutine sub_sub(i,a)
       integer(4)::a(1)
       integer(4)::i
         a=a+i
      end subroutine

      module mod
      contains
       subroutine sub(i,a)
       integer(4)::a
       integer(4)::i
         a=a+i
         call sub_sub(i,a)
       end subroutine
      end module

      program main
       use mod
       integer(4)::a=1
       integer(4)::i=1
        call sub(i,a)
        print *,'pass'
      end program
