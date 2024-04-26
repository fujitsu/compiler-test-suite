        module mod01
                      type :: ty
                      end type ty
        end module mod01
        
        module mod02
                contains
                   subroutine foo(var)
                    use mod01
                     type(ty), intent(inout) :: var
                   end subroutine foo
        end module mod02
       
       module mod03
                use mod02
                use mod01
                private
           public :: ty
       end module mod03
      
       subroutine xxx
                use mod03
                  type (ty) :: var
       end subroutine
       print *,'pass'
       end
