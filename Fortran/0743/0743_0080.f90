call ss1(-3,-3,3,3,3,3)
call x
print *,'pass'
end
subroutine ss1(i,j,k,l,m,kk)
integer(4)::e(i,j,k,l,m)
e=5
call chk1(e,kk)
contains
 subroutine chk1(e,kk)
 integer(4),dimension(:,:,:,:,:)::e
 end subroutine
end
subroutine x
1 end
