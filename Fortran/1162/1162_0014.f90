module m1
    procedure(u),pointer::f
contains
pure function u(d) result(r)
integer,intent(in)::d
integer::r
r=d
end
subroutine s
f=>u
    associate (r=>f(3)  )
         block
           integer :: c(r)
if (size(c)/=3) print *,1001
   c=3
if (any(c/=3)) print *,9001
         end block
   end associate
end
end
use m1
print *,'sngg594o : pass'
end

