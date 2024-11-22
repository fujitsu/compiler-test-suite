module foo_module
 type :: foo
 integer :: ii
 contains
    procedure :: ptimes => times_foo
 end type

contains
   function times_foo(this,inp) 
     class(foo) ,intent(in) :: this
     integer, intent(in) :: inp
     integer :: times_foo
     times_foo = this%ii + inp 
   end function

end module

program main
 use foo_module ,only : foo
 use foo_module ,XX => foo

 type(foo)  :: this
 type(xx)  :: this_xx
 this%ii = 5
 this_xx%ii = 6
 if(this%ptimes(1) .NE. 6) print*,"121"
 if(this_xx%ptimes(1) .NE. 7) print*,"122"
 print*,"pass"
end program