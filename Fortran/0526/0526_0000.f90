 module foo_module
       type :: foo
        integer :: ii
        contains
             procedure :: times => times_foo
          end type
        contains
            function times_foo(this,inp)
              class(foo) ,intent(in) :: this
             integer, intent(in) :: inp
             integer :: times_foo
             times_foo = this%ii + inp
           end function
        end module
       
        module m1
         use foo_module
        end module
       
      
        program main
        use m1
        type(foo)  :: this_xx
        this_xx%ii = 6
         if(this_xx%times(1) .NE. 7) print*,"121"
         print*,"pass"
        end program

