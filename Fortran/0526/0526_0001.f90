 module foo_module
       type :: foo
        integer :: ii
        contains
             procedure :: times => times_foo
             procedure :: timet => times_foot
          end type
        contains
            function times_foo(this,inp)
              class(foo) ,intent(in) :: this
             integer, intent(in) :: inp
             integer :: times_foo
             times_foo = this%ii + inp
           end function
            function times_foot(this,inp)
              class(foo) ,intent(in) :: this
             character, intent(in) :: inp
             integer :: times_foot
             times_foot = this%ii + ichar(inp)
           end function
  end module
       
        module m1
         use foo_module
        end module
        module m2
         use foo_module
        end module
        module m3
         use foo_module
        end module
        module m4
         use foo_module
        end module
        module m5
         use foo_module
        end module
        module m6
         use foo_module
        end module
        module m7
         use foo_module
        end module
        module m8
         use foo_module
        end module
        module m9
         use foo_module
        end module
        module m10
         use foo_module
        end module
        module m11
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m12
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m13
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m14
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m15
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m16
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m17
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m18
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m19
         use m1
         use m2
         use m3
         use m4
         use m5
         use m6
         use m7
         use m8
         use m9
         use m10
        end module
        module m20
         use m11
         use m12
         use m13
         use m14
         use m15
         use m16
         use m17
         use m18
         use m19
        end module
       
      
        program main
        use m20
        type(foo)  :: this_xx
        this_xx%ii = 6
         if(this_xx%times(1) .NE. 7) print*,"121"
         if(this_xx%timet(char(1)) .NE. 7) print*,"121"
         print*,"pass"
        end program

