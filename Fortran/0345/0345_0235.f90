    module mod
     integer::i,j
     contains
      subroutine sub1()
        i=i+1
      entry e_sub1()
        i=i+2
      end subroutine
      subroutine sub2()
        j=j+1
      entry e_sub2()
        j=j+2
      end subroutine
      subroutine sub3()
        if (i/=100.or.j/=100) then
          print *,'error1'
        endif
      entry e_sub3()
        if (i/=2.or.j/=2) then
          print *,'error1'
        endif
      end subroutine
    end module mod

    program main
     use mod
      i=0
      j=0
      call e_sub1()
      call e_sub2()
      call e_sub3()
      print *,'pass'
    end program
