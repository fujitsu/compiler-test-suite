    module w1
                      type :: ty
                        integer::x1
                      end type ty
    end
    module w2
         use w1,only:ty
    end
        module a
         use w2,only:ty
        end 
        module bb
            interface
                   function   foo()
                    use a
                     type(ty) :: foo
                   end function
            end interface
        end 
       module ccc
                use bb
                use a
                private
           public :: ty
       end 

                use ccc
          call sub(ty(1))
       print *,'pass'
contains
        subroutine sub(x)
             use w1
  type(ty)::x
          if (x%x1/=1) print *,2020
        end subroutine
        
       end
                   function   foo()
                    use a
                     type(ty) :: foo
                     foo=ty(1)
                   end function
