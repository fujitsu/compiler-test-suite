         module m
           interface 
           function fun(a,b)
             integer a
             logical b
             intent(in) a,b
          end function
           end interface
procedure (fun),pointer:: p
           interface operator(+)
procedure :: p  
           end interface
        end

        module m2
          integer i
        end

       module m3
         use m
         use m2
         private i
contains
   subroutine s1
     if ((10+.true.)/=10) print *,101
   end subroutine
       end
module m4
use m3
contains
subroutine ss
     p=>fun
call s1
end subroutine
end
use m4
print *,'pass'
end
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
