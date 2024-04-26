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
       module ccc_1
                use a
                use bb
                private
           public :: ty
       end 
       module ccc_2
                use a
                use bb
                private
           public :: ty
       end 
       module ccc
 use ccc_1
 use ccc_2
                private
           public :: ty
       end 





                use ccc
                  type (ty) :: var
       print *,'pass'
       end
