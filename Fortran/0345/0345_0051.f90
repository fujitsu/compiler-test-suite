      module mod
       integer(4)::i,j
      contains
       subroutine sub(*,*,*)
        k=1
        return (i+j)*k
       end subroutine
      end module

      program main
       use mod
        i=1
        j=2
        call sub(*1,*2,*3)
    1   print *,'error1'
    2   print *,'error2'
    3   print *,'pass'
      end program
