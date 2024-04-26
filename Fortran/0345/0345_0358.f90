    module mod
     contains
      subroutine sub1(i)
       integer::j=333
        i=i+j
        call sub22(i)
      end subroutine
    end module

    subroutine sub22(i)
     integer::j=444
      i=i+j
      call sub333(i)
    end subroutine

    subroutine sub333(i)
     integer::j=1
      i=i*j
    end subroutine

    program main
     use mod
     i=0
     call sub1(i)
     if (i/=777) print *,'error i ->',i
     print *,'pass'
    end
