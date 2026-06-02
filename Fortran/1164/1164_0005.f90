integer,parameter :: rrr(1)=1
integer,parameter :: brr(2)=(/1,2/)
associate (rsrc =>rrr(1))
 block
   real :: cSum(brr(rsrc)) 
   if (size(cSum) .ne.1 ) print *,'ng'
   cSum=3
   if (any(cSum/=3)) print *,1001
 end block
 block
   real :: cSuma(brr(rsrc+1)) 
   if (size(cSuma) .ne.2 ) print *,'ng'
   cSuma=3
   if (any(cSuma/=3)) print *,1002
 end block
end associate
print *,'pass'
end
