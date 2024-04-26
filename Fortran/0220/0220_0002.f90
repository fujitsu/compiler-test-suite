        module mod01
                      type :: ty
                        integer::x1
                      end type ty
        end module mod01
        module mod02
                    use mod01
                contains
                   subroutine foo(var)
                     type(ty) :: var
                   end subroutine foo
        end module mod02
       module mod03
                use mod02
                use mod01
                private
           public :: ty
       end module mod03

                use mod03
                  type (ty) :: var
       print *,'pass'
       end
