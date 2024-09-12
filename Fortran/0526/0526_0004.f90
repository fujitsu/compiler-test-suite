module n01
       type :: foo01
        integer :: ii
        contains
             procedure :: times01 => times_foo01
             procedure :: timet01 => times_foot01
       end type
        contains
            function times_foo01(this,inp)
              class(foo01) ,intent(in) :: this
             integer, intent(in) :: inp
             integer :: times_foo01
             times_foo01 = this%ii + inp
           end function
            function times_foot01(this,inp)
              class(foo01) ,intent(in) :: this
             character, intent(in) :: inp
             integer :: times_foot01
             times_foot01 = this%ii + ichar(inp)
           end function
end
module foo_module
use n01
end
       
        module m1
         use foo_module
        end module
        module m11
         use m1
        end module
       
      
        program main
        use m1
        type(foo01)  :: this_xx
        this_xx%ii = 6
         if(this_xx%times01(1) .NE. 7) print*,"121"
         if(this_xx%timet01(char(1)) .NE. 7) print*,"121"
         print*,"pass"
        end program

