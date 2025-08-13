subroutine sub
common i
integer a1(i)
integer a2(i,i)
integer a3(i,i,i)
integer a4(i,i,i,i)
integer a5(i,i,i,i,i)
integer a6(i,i,i,i,i,i)
integer a7(i,i,i,i,i,i,i)
a1=1;a2=1;a3=1;a4=1;a5=1;a6=1;a7=1
call chk1(a1)
call chk2(a2)
call chk3(a3)
call chk4(a4)
call chk5(a5)
call chk6(a6)
call chk7(a7)
write(41,*)a1
write(41,*)a2
write(41,*)a3
write(41,*)a4
write(41,*)a5
write(41,*)a6
write(41,*)a7
write(41,*)-999
rewind 41
read(41,*) j;if (j/=-999)write(6,*) "NG"
write(42,*)-998
rewind 42
read(42,*) j;if (j/=-998)write(6,*) "NG"
contains
subroutine chk1(a)
integer a(:)
if (size(a)/=0)write(6,*) "NG"
write(42,*)a
end subroutine
subroutine chk2(a)
integer a(:,:)
if (size(a)/=0)write(6,*) "NG"
write(42,*)a
end subroutine
subroutine chk3(a)
integer a(:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(42,*)a
end subroutine
subroutine chk4(a)
integer a(:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(42,*)a
end subroutine
subroutine chk5(a)
integer a(:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(42,*)a
end subroutine
subroutine chk6(a)
integer a(:,:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(42,*)a
end subroutine
subroutine chk7(a)
integer a(:,:,:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(42,*)a
end subroutine
end
common i
i=-9
call sub
print *,'pass'
end
