module m1
contains
subroutine s1
  do n=1,20
         associate (s =>f(3))
         block
           real :: c(s)
if (size(c)/=3) print *,1001
   c=[1,2,3]
if (any(c/=[1,2,3])) print *,9001
         end block
        end associate
 end do
end
integer pure function f(n)
 integer,intent(in)::n
 f=n
end
end
use m1
call s1
print *,'sngg576o : pass'
end

