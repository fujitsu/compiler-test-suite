call ss1(+3,+3,+3,+3,01)
call ss1(-3,+3,+3,+3,02)
call ss1(+3,-3,+3,+3,03)
call ss1(-3,-3,+3,+3,04)
call x
print *,'pass'
end
subroutine ss1(i,j,k,l,kk)
integer(4)::e(i,j)
e=5
call chk1(e,kk)
contains
 subroutine chk1(e,kk)
 integer(4),dimension(:,:)::e
 write(50,*)'test'
write(51,*)kk,e
 end subroutine
end
subroutine x
integer a(10)
rewind 51
read(51,*) a
if (a(1)/=1)print *,'error-1'
if (any(a(2:)/=5))print *,'error-1'
do i=2,4
read(51,*) a(i)
if (a(i)/=i)print *,'error-2'
end do
end
