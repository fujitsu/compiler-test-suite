module m1
contains
subroutine s
k=2
call t
    associate (r=>k  )
         block
           integer :: c(len([character(r):: '1234']))
if (size(c)/=2) print *,1001
         end block
   end associate
contains
subroutine t
           integer :: d(len([character(k):: '1234']))
if (size(d)/=2) print *,1002
end
end
end
use m1
call s
print *,'sngg598o : pass'
end

