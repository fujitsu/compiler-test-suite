      module mod1
        integer(4),dimension(10)::a=(/10,9,8,7,6,5,4,3,2,1/)
        integer(4),dimension(10)::b=(/1,2,3,4,5,6,7,8,9,10/)
        integer(4),dimension(10)::c=(/0,0,0,0,0,0,0,0,0,1/)
      contains
        elemental subroutine sub()
         logical,target::l
         if (any(a+b/=(/11,11,11,11,11,11,11,11,11,11/))) l=.true.
        end subroutine
      end module

      program main
       use mod1
        call sub()
        print *,'pass'
      end program
