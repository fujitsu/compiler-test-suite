      program main
        call s()
        print *,'pass'
      end program

      module mod
       contains
        subroutine sub1(i,j,*,*,*)
          k=1
          return (i+j)*k
        end subroutine

        subroutine sub0
          i=1
          j=2
          call sub1(i,j,*1,*2,*3)
    1     print *,'error1'
    2     print *,'error2'
    3     i=0
          j=0
        end subroutine
      end module

      subroutine s()
       use mod
        call sub0()
      end subroutine

