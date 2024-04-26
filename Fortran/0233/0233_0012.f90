        module a_1
                      type :: ty
                        integer::x1
                      end type ty
        end 
        module a_2
                      type :: tya
                        integer::x1
                      end type tya
        end 
        module bb
                contains
                   subroutine foo(var,var2)
                    use a_1
                    use a_2
                     type(ty) :: var
                     type(tya) :: var2
                   end subroutine foo
        end 
       module ccc_1
                use a_1
                use bb
                private
           public :: ty
       end 
       module ccc_2
                use a_2
                use bb
                private
           public :: tya
       end 
       module ccc
 use ccc_1
 use ccc_2
                private
           public :: ty
           public :: tya
       end 

                use ccc
                  type (ty) :: var
                  type (tya) :: vara
       print *,'pass'
       end
