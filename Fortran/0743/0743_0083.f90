call ss1(-3,3,3)
call ss1(3,-3,3)
call ss1(-3,-3,3)
print *,'pass'
end
subroutine ss1(i,j,k)
integer(4)::c(i,j,k)
c=3
call chk1(c)
contains
 subroutine chk1(c)
 integer(4),dimension(:,:,:)::c
 end subroutine
end
