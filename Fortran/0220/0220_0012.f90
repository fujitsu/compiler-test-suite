        module a
                      type :: ty
                        integer::x1
                      end type ty
        end 
        module bb
                contains
                   function   foo()
                    use a
                     type(ty) :: foo
                     foo=ty(1)
                   end function
        end 
       module ccc
                use bb
                use a
                private
           public :: ty,foo
       end 

                use ccc
                  type (ty) :: var
          var=foo()
          if (var%x1/=1) print *,2020
       print *,'pass'
       end
