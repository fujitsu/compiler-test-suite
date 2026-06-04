!integer,parameter :: rrr(1)=1
integer           :: rrr(1)=1
integer           :: ARR(1)=1
associate (rsrc =>rrr(1))
 block
   !real :: cSum(ARR(rsrc))  ! sst OK
   real :: cSum(ARR(rsrc+0))  
   if (size(cSum) .ne.1 ) print *,'ng'
   cSum=3
   if (any(cSum/=3)) print *,1001
 end block
end associate
print *,'pass'
end
pure function ifun(i1)
intent(in) :: i1
ifun=i1
end
