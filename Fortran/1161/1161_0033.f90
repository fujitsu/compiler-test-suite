associate (rsrc =>1)
 block
   real :: cSum(rsrc) !=1 
   cSum=rsrc
   if (size(cSum) .ne.1 ) print *,'ng'
   if (cSum(1)/=1) print *,101,cSum(1)
 end block
end associate
print *,'pass'
end
