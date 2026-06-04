module m1
contains
subroutine s1(m)
  do n=1,m
    associate (r=>f(4))
         associate (s =>f(r-1))
            associate (t=>f(s-1))
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
call s1(1)
print *,'sngg580o : pass'
end

