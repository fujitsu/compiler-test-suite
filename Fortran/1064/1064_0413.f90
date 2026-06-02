         module m
           interface operator(+)
             module procedure fun
           end interface
         contains
           function fun(a,b)
             integer a
             logical b
             intent(in) a,b
            if (b .eqv. .true.) then
              fun = a
            else
              fun = 0
            end if
          end function
        end

        module m2
          integer i
        end

       module m3
         use m
         use m2
         private 
         public :: s1,operator(+)
contains
   subroutine s1
     if ((10+.true.)/=10) print *,101
   end subroutine
       end
module m4
use m3
private
public:: ss
contains
subroutine ss
     if ((10+.true.)/=10) print *,102
call s1
   end subroutine
end
use m4
call ss
print *,'pass'
end
