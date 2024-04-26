      subroutine sub1(i,j)
       call sub22(i,j)
      end subroutine
      subroutine sub22(i,j)
       j=j+i
       i=i+j
      end subroutine

    program main
      j=100
      i=1
      call sub1(i,j)
      if (i/=102.or.j/=101) print *,'error1 i,j ->',i,j
      call sub1(i,j)
      if (i/=305.or.j/=203) print *,'error2 i,j ->',i,j
      print *,'pass'
    end program
