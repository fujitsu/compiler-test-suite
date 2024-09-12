                  module mod
                   procedure (y),pointer :: pp
                 contains
                 function y()
                   character :: y
                   y='s'
                 end function
                 function   s()  result(r)
                   procedure (x2),pointer :: p
                   integer::r
                   r=1
                  p=>x2
if (p(1)/=2) print *,202
                 end 
                 function x2(i)
                      integer :: x2,i
                      x2= i+1
                  end function

                end

                subroutine s1
                use mod
                    pp=>y
                   if (  s()/=1 ) print *,1001
                end
                call s1
                print *,'pass'
                end
