subroutine sub(cSuma)
interface
pure function ifun(iii)
intent(in) :: iii
end
end interface
integer,parameter :: i1=1
   real :: cSuma(ifun(i1)) 
integer,parameter :: rrr(1)=1
associate (rsrc =>rrr(1))
 block
   real :: cSumb(ifun(i1)) 
   real :: cSum(ifun(rsrc)) 
   if (size(cSum) .ne.1 ) print *,'ng'
   cSum = rsrc
   if (cSum(1)/=1) print *,101,cSum(1)
 end block
end associate
print *,'pass'
!contains
end
pure function ifun(iii)
intent(in) :: iii
ifun=iii
end
print *,'pass'
end
