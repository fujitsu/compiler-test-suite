associate (rsrc =>1)
 block
   real :: cSum(rsrc) !=1 
   if (size(cSum) .ne.1 ) print *,'ng'
 end block
end associate
print *,'pass'
end
