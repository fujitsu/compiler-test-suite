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
 module n02
       type :: foo02
        integer :: ii
        contains
             procedure :: times02 => times_foo02
             procedure :: timet02 => times_foot02
          end type
        contains
            function times_foo02(this,inp)
              class(foo02) ,intent(in) :: this
             integer, intent(in) :: inp
             integer :: times_foo02
             times_foo02 = this%ii + inp
           end function
            function times_foot02(this,inp)
              class(foo02) ,intent(in) :: this
             character, intent(in) :: inp
             integer :: times_foot02
             times_foot02 = this%ii + ichar(inp)
           end function
  end module
module foo_module
use n01
use n02
end
       
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
        type(foo01)  :: this_xx
        this_xx%ii = 6
         if(this_xx%times01(1) .NE. 7) print*,"121"
         if(this_xx%timet01(char(1)) .NE. 7) print*,"121"
         print*,"pass"
        end program
