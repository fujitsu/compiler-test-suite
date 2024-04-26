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
                   subroutine foo(var)
                    use a
                     type(ty) :: var
                   end subroutine foo
        end 
       module ccc
                use bb
                use aa,ty=>tya
                private
           public :: ty
       end 

                use ccc
                  type (ty) :: var
       print *,'pass'
       end
