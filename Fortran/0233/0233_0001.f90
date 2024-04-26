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
                    use a
                     type(ty) :: var
                     type(tyy) :: var2
                   end subroutine foo
        end 
module bb_1
use bb
end
       module ccc_1
                use bb_1
                use aa,ty=>tya
                use aa,tyy=>tya
end
module ccc
use ccc_1
                use a
                private
           public :: ty
           public :: tyy
contains
subroutine  sss()
                  type (ty) :: var
                  type (tyy) :: var2
end
       end 

                use ccc
                  type (ty) :: var
                  type (tyy) :: var2
       print *,'pass'
       end
