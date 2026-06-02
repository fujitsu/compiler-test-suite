module m1
contains
subroutine s
k=2
call t
         block
           integer :: c(len([character(k):: '1234']))
if (size(c)/=2) print *,1001
   c=3
if (any(c/=3)) print *,9001
         end block
contains
subroutine t
           integer :: d(len([character(k):: '1234']))
if (size(d)/=2) print *,1002
   d=3
if (any(d/=3)) print *,9002
end
end
end
use m1
call s
print *,'sngg599o : pass'
end

