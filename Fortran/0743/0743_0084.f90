call ss1(-3,3,3)
call ss1(3,-3,3)
call ss1(-3,-3,3)
print *,'pass'
end
subroutine ss1(i,j,k)
integer(4)::c1(i,j,k)
integer(4)::c2(i,j,k)
integer(4)::c3(i,j,k)
integer(4)::c4(i,j,k)
c1=1;c2=2;c3=3;c4=4
call chk1(c1,c2,c3,c4)
contains
 subroutine chk1(c1,c2,c3,c4)
 integer(4),dimension(:,:,:)::c1,c2,c3,c4
write(52,*)c1
write(52,*)c2
write(52,*)c3
write(52,*)c4,100
rewind 52
read(52,*)iu;if (iu/=100)print *,'error'
 end subroutine
end
