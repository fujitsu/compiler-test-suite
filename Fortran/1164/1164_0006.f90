integer,parameter :: rrr(1)=1
type ty1
  integer :: brr(1)
end type
type(ty1),parameter :: x=ty1(1)
associate (rsrc =>rrr(1))
 block
   real :: cSum(x%brr(rsrc)) 
   if (size(cSum) .ne.1 ) print *,'ng'
   cSum=3
   if (any(cSum/=3)) print *,1001
 end block
end associate
print *,'pass'
end
