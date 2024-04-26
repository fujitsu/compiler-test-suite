        module a
                      type :: ty
                        integer::x1
                      end type ty
        end 
        module aa
                use a,tya=>ty
        end
        module bb
                contains
                   subroutine foo(var,var2)
                    use aa,ty=>tya
                    use aa,tyy=>tya
                     type(ty) :: var
                     type(tyy) :: var2
                   end subroutine foo
        end 
       module ccc
                use bb
                use aa,ty=>tya
                use aa,tyy=>tya
                private
           public :: ty
           public :: tyy
       end 

                use ccc
                  type (ty) :: var
                  type (tyy) :: var2
       print *,'pass'
       end
