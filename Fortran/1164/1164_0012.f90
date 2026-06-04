!subroutine sub(bbb)
interface 
pure function ifun(i1)
intent(in) :: i1
end
end interface
integer,parameter :: rrr(1)=1
associate (rsrc =>rrr(1))
 block
   real :: cSum(ifun(rsrc)) 
   if (size(cSum) .ne.1 ) print *,'ng'
 end block
end associate
print *,'pass'
end
pure function ifun(i1)
intent(in) :: i1
ifun=i1
end
