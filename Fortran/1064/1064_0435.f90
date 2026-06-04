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
module m4
use m3
private
public::gen,s1
end
module m5
use m4
private
public:: s2
contains
subroutine s2 
     if (gen(10,.true.)/=10) print *,101
call s1
end subroutine
end
use m5
call s2
print *,'pass'
end
