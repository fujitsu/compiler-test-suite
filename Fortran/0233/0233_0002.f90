        module a
                      type :: ty
                        integer::x1
                      end type ty
        end 
        module bb
                contains
                   subroutine foo(var)
                    use a
                     type(ty) :: var
                   end subroutine foo
        end 
       module ccc
                use a
                use bb
                private
           public :: ty
       end 

                use ccc
                  type (ty) :: var
       print *,'pass'
       end
