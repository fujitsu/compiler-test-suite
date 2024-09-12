subroutine s1
parameter (a=aint(-0.9))
x=-0.9
call ss1(a,x)
contains
subroutine ss1(a,x)
write(1,'(z8.8)')a
write(1,'(z8.8)')aint(x)
if (a/=aint(x))print *,101,a,aint(x)
end subroutine
end
subroutine s2
implicit real(8)(a,x)
parameter (a=aint(-0.9))
x=-0.9
call ss2(a,x)
contains
subroutine ss2(a,x)
implicit real(8)(a,x)
if (a/=aint(x))print *,102,a,aint(x)
write(2,'(z16.16)')a
write(2,'(z16.16)')aint(x)
end subroutine
end
call s1
call s2
call chk
print *,'pass'
end
subroutine chk
character(8) r11,r12
character(16) r21,r22
rewind 1
rewind 2
read(1,'(a)') r11
read(1,'(a)') r12
if (r11/=r12)print *,201,r11,' ',r12
read(2,'(a)') r21
read(2,'(a)') r22
if (r21/=r22)print *,202,r21,' ',r22
end 

