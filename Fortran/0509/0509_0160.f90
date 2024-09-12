                  module mod
                   procedure (y) :: pp
                 contains
                 function y()
                   character :: y
                   y='s'
                 end function
                 function   s() result(r)
                   integer::r
                   procedure (x2),pointer :: p
                  p=>x2
                  r=1
                 end 
                 function x2(i)
                      integer :: x2,i
                      x2= i+1
                  end function

                end

                subroutine s1
                use mod
                   if ( pp()/='s') print *,302
                   if (  s()/=1) print *,301
                end
                call s1
                print *,'pass'
                end
                 function pp()
                   character :: pp
                   pp='s'
                 end function
