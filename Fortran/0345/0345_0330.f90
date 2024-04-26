      program main
       use mod1
        i=0
        j=0
        call sub1(i,j)
        call sub2(i,j)
        call sub3(i,j)
        if (i/=7.or.j/=-7) print *,'error',i,j
        print *,'pass'
      end program

      module mod1
       use mod2
      contains
       subroutine sub1(i,j)
         i=i+1
         j=j-1
         call sub2(i,j)
         call sub3(i,j)
       end subroutine
      end module

      module mod2
       use mod3
      contains
       subroutine sub2(i,j)
         i=i+1
         j=j-1
         call sub3(i,j)
       end subroutine
      end module

      module mod3
       contains
       subroutine sub3(i,j)
         i=i+1
         j=j-1
       end subroutine
      end module
