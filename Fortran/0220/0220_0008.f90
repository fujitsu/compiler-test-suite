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
                use bb
                use a
       end 

                use ccc,only:ty
                  type (ty) :: var
var%x1=1
if (var%x1/=1) print *,1001
       print *,'pass'
       end
