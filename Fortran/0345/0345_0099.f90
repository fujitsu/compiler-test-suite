      module mod
      contains
      subroutine sub(n,a)
       integer(kind=4),intent(in)::n
       integer(kind=4),dimension(n),intent(inout)::a
       a=a+1
      end subroutine
      end module

      program main
       use mod
       integer(kind=4),parameter::n=5
       integer(kind=4),dimension(n)::a
        a=(/1,2,3,4,5/)
        call sub(n,a(1:5:1))
        print *,'pass'
      end program
