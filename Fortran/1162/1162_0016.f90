module m1
integer::a(3)=1
contains
subroutine s
    associate (r=>a  )
         block
           integer :: c(size([(r,n=1,2)]))
if (size(c)/=6) print *,1001
   c=3
if (any(c/=3)) print *,9001
         call ss
         end block
   end associate
end
subroutine ss
           integer :: d(size([(a,n=1,2)]))
if (size(d)/=6) print *,1002,size(d)
end
end
use m1
call s
print *,'sngg600o : pass'
end

