integer,parameter :: isss(1)=3
 associate (src =>isss(1))
 block
   real :: cSum(src)
   if (size(cSum)/=3) print *,1001
 end block
end associate
print *,'pass'
end
