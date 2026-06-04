integer,parameter :: isss=3
 associate (src =>isss)
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1001
 end block
end associate
print *,'pass'
end
