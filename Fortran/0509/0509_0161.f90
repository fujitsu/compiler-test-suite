                  module mod
                   procedure (y) :: pp
                 contains
                 function y()
                   character :: y
                   y='s'
                 end function
                 function   s() result(r)
                   integer::r
                  type z
                   procedure (x2),nopass,pointer :: pp
                  end type
                   type(z)::v
                  v%pp=>x2
                  if (v%pp(1)/=2) print *,3030
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
