                  module mod
                   procedure (y),pointer :: pp
                 contains
                 function y()
                   character :: y
                   y='s'
                 end function
                 function   s() result(p)
                   procedure (x2),pointer :: p
                  p=>x2
                 end 
                 function x2(i)
                      integer :: x2,i
                      x2= i+1
                  end function

                end

                subroutine s1
                use mod
                     procedure (x2),pointer :: w 
                    pp=>y
                   w=>   s()
                    if (w(1)/=2) print *,303
                end
                call s1
                print *,'pass'
                end
