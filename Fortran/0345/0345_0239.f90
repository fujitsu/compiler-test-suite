    module mod
      integer(8)::ii
     contains
      subroutine sub1()
        ii=ii+1
      entry e_sub1()
        ii=ii+2
      entry e_sub2()
        ii=ii+3
        return
      entry e_sub3()
        if (ii/=8) print *,'error2'
      end subroutine
    end module mod

    program main
     use mod
      ii=0
      call e_sub1()
      if (ii/=5) print *,'error1'
      call e_sub2()
      call e_sub3()
      call sub1()
      if (ii/=14) print *,'error1'
      print *,'pass'
    end program
