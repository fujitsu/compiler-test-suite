integer,parameter :: rrr(1)=1
character :: cha='A'
associate (rsrc =>rrr(1))
 block
   real :: cSum(len(cha(rsrc:rsrc))) 
   if (size(cSum) .ne.1 ) print *,'ng'
   cSum=3
   if (any(cSum/=3)) print *,1001
 end block
end associate
print *,'pass'
end
