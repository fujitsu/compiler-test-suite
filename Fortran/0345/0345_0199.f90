    module mod1
     integer::k
     contains
      subroutine sub1(i,j)
        call subsub()
       contains
        subroutine subsub()
         i=i+k
         j=j+k
        end subroutine
      end subroutine
    end module
    module mod2
     integer::kk
     contains
      subroutine sub2(i,j)
        call subsub()
       contains
        subroutine subsub()
         j=j+kk
         i=i+kk
        end subroutine
      end subroutine
    end module
    program main
     use mod1
     use mod2
      k=1;kk=1
      i=1;j=1
      call sub1(i,j)
      if (i/=2.or.j/=2) print *,'error1 i,j ->',i,j
      call sub2(i,j)
      if (i/=3.or.j/=3) print *,'error2 i,j ->',i,j
      print *,'pass'
    end program
