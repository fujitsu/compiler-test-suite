module mod
contains
pure function ifun(rrr)
complex :: rrr
intent(in) :: rrr
ifun=int(rrr)
end function
end
use mod
integer ::rsrc
complex :: ccc=1.0
         associate (rsrc =>ccc)
         block
           real :: cSum(ifun(rsrc))
           cSum=rsrc
if (size(cSum).ne.1) print *,'ng'
if (cSum(1)/=1) print *,101,cSum(1)
         end block
        end associate
print *,'pass'
end 
