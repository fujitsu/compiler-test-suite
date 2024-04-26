    program main
      i=1
      call sub1(i)
      if (i/=2) print *,'error i ->',i
      print *,'pass'
    end program

    subroutine sub1(i)
      call sub22()
     contains
      subroutine sub22()
        i=i+1
      end subroutine
    end subroutine
