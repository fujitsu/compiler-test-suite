subroutine sub
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
write(1,*)a1
write(1,*)a2
write(1,*)a3
write(1,*)a4
write(1,*)a5
write(1,*)a6
write(1,*)a7
write(1,*)-999
rewind 1
read(1,*) j;if (j/=-999)write(6,*) "NG"
write(2,*)-998
rewind 2
read(2,*) j;if (j/=-998)write(6,*) "NG"
contains
subroutine chk1(a)
character(i) a(:)
if (size(a)/=0)write(6,*) "NG"
write(2,*)a
end subroutine
subroutine chk2(a)
character(i) a(:,:)
if (size(a)/=0)write(6,*) "NG"
write(2,*)a
end subroutine
subroutine chk3(a)
character(i) a(:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(2,*)a
end subroutine
subroutine chk4(a)
character(i) a(:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(2,*)a
end subroutine
subroutine chk5(a)
character(i) a(:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(2,*)a
end subroutine
subroutine chk6(a)
character(i) a(:,:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(2,*)a
end subroutine
subroutine chk7(a)
character(i) a(:,:,:,:,:,:,:)
if (size(a)/=0)write(6,*) "NG"
write(2,*)a
end subroutine
end
common i
i=-9
call sub
print *,'pass'
end
