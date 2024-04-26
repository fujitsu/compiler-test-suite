    module mod
      integer(8)::ii
     contains
      subroutine sub1()
        ii=ii+1
      entry e_sub1()
        ii=ii+2
      entry e_sub2()
        ii=ii+3
      end subroutine
    end module mod

    program main
     use mod
      ii=0
      call e_sub1()
      if (ii/=5) print *,'error1'
      call e_sub2()
      if (ii/=8) print *,'error1'
      print *,'pass'
    end program
