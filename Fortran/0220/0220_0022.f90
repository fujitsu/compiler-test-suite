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
                     var%x1=1
                   end subroutine foo
        end 
       module ccc
                use bb
                use a
                private::foo
           public :: ty,sss
contains
       subroutine sss
          type(ty)::v
         call foo(v)
  if (v%x1/=1) print *,20201
       end 
       end 

                use ccc
                  type (ty) :: var
call sss
var%x1=1
if( var%x1/=1) print *,200
       print *,'pass'
       end
