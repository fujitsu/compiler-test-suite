      subroutine sub(i,j,*,*)
        return i+j
      end subroutine 

      program main
        i=1
        j=1
        call sub(i,j,*1,*2)
    1   print *,'error'
    2   print *,'pass'
      end program
