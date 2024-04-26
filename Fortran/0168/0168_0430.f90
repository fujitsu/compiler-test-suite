  module m
    interface gen 
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
         private i
contains
   subroutine s1
     if (gen(10,.true.)/=10) print *,101
   end subroutine
       end
use m3
call s1
print *,'pass'
end
