call ss1(+3,+3,+3,+3,01)
call ss1(-3,+3,+3,+3,02)
call ss1(+3,-3,+3,+3,03)
call ss1(-3,-3,+3,+3,04)
call ss1(+3,+3,-3,+3,05)
call ss1(-3,+3,-3,+3,06)
call ss1(+3,-3,-3,+3,07)
call ss1(-3,-3,-3,+3,08)
call x
print *,'pass'
end
subroutine ss1(i,j,k,l,kk)
integer(4)::e(i,j,k)
e=5
call chk1(e,kk)
contains
 subroutine chk1(e,kk)
 integer(4),dimension(:,:,:)::e
 write(48,*)'test'
write(49,*)kk,e
 end subroutine
end
subroutine x
integer a(26)
rewind 49
read(49,*) a
if (a(1)/=1)print *,'error-1'
if (any(a(2:)/=5))print *,'error-1'
do i=2,8
read(49,*) a(i)
if (a(i)/=i)print *,'error-2'
end do
end
