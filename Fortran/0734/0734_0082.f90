subroutine sub(a7,a6,a5,a4,a3,a2,a1)
common i
character(i) a1(i)
character(i) a2(i,i)
character(i) a3(i,i,i)
character(i) a4(i,i,i,i)
character(i) a5(i,i,i,i,i)
character(i) a6(i,i,i,i,i,i)
character(i) a7(i,i,i,i,i,i,i)
a1='1';a2='1';a3='1';a4='1';a5='1';a6='1';a7='1'
call chk1(a1)
call chk2(a2)
call chk3(a3)
call chk4(a4)
call chk5(a5)
call chk6(a6)
call chk7(a7)
write(48,*)a1
write(48,*)a2
write(48,*)a3
write(48,*)a4
write(48,*)a5
write(48,*)a6
write(48,*)a7
write(48,*)-999
rewind 48
read(48,*) j;if (j/=-999)write(6,*) "NG"
write(49,*)-998
rewind 49
read(49,*) j;if (j/=-998)write(6,*) "NG"
contains
subroutine chk1(a)
character(i) a(:)
if (size(a)/=0)write(6,*) "NG"
write(49,*)a
end subroutine
subroutine chk2(a)
character(i) a(:,:)
if (size(a)/=0)write(6,*) "NG"
write(49,*)a
end subroutine
subroutine chk3(a)
character(i) a(:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(49,*)a
end subroutine
subroutine chk4(a)
character(i) a(:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(49,*)a
end subroutine
subroutine chk5(a)
character(i) a(:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(49,*)a
end subroutine
subroutine chk6(a)
character(i) a(:,:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(49,*)a
end subroutine
subroutine chk7(a)
character(i) a(:,:,:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(49,*)a
end subroutine
end
common j
integer,parameter::i=-9
character(i) a1(i)
character(i) a2(i,i)
character(i) a3(i,i,i)
character(i) a4(i,i,i,i)
character(i) a5(i,i,i,i,i)
character(i) a6(i,i,i,i,i,i)
character(i) a7(i,i,i,i,i,i,i)
j=i
call       sub(a7,a6,a5,a4,a3,a2,a1)
print *,'pass'
end
