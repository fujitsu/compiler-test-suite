module m1
contains
subroutine s1
  do n=1,20
    associate (r=>f(4))
         associate (s =>f(3))
            associate (t=>f(2))
         block
           real :: c(s,t,r)
if (size(c)/=3*2*4) print *,1001
   c=3
if (any(c/=3)) print *,9001
         end block
        end associate
     end associate
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
print *,'sngg579o : pass'
end

