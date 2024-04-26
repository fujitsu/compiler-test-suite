      subroutine sub(i,j,*,*,*)
        k=1
        return (i+j)*k
      end subroutine

      program main
        i=1
        j=2
        call sub(i,j,*1,*2,*3)
    1   print *,'error1'
    2   print *,'error2'
    3   print *,'pass'
      end program
