subroutine ss1(i)
parameter(j=-3)
real(4)::b3(j,j,j); b3=1.;write(1,*)b3
end
subroutine ss2(i)
parameter(j=-3)
real(4)::b3(i,j,j); b3=1.;write(1,*)b3
end
subroutine ss3(i)
parameter(j=-3)
real(4)::b3(j,i,j); b3=1.;write(1,*)b3
end
subroutine ss4(i)
parameter(j=-3)
real(4)::b3(j,j,i); b3=1.;write(1,*)b3
end
subroutine ss5(i)
parameter(j=-3)
real(4)::b3(i,i,j); b3=1.;write(1,*)b3
end
subroutine ss6(i)
parameter(j=-3)
real(4)::b3(j,i,i); b3=1.;write(1,*)b3
end
subroutine ss7(i)
parameter(j=-3)
real(4)::b3(i,j,i); b3=1.;write(1,*)b3
end
subroutine ss8(i)
parameter(j=-3)
real(4)::b3(i,i,i); b3=1.;write(1,*)b3
end
do i=-3,3
call ss1(i)
call ss2(i)
call ss3(i)
call ss4(i)
call ss5(i)
call ss6(i)
call ss7(i)
if (i>0)cycle
call ss8(i)
end do
write(1,*) 9999
rewind 1
read(1,*) kkk;if(kkk/=9999)write(6,*) "NG"
print *,'pass'
end
