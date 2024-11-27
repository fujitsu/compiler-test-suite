call ss1
call ss2
call ss3
call ss4
print *,'pass'
end
subroutine ss4
integer(8)::b(3,3),c(3,3),a(3,3),aa(3)
n=40
b=reshape((/(i,i=1,9)/),(/3,3/))
c=reshape((/(i,i=1,9)/),(/3,3/))
a=matmul(b,c)
call chk1(a)
call chk1(matmul(b,c))
aa=matmul(b,c(3,:))
call chk2(aa)
call chk2(matmul(b,c(3,:)))
aa=matmul(b(3,:),c)
call chk3(aa)
call chk3(matmul(b(3,:),c))
write(n+1,*)matmul(b,c)
write(n+2,*)matmul(b,c(3,:))
write(n+3,*)matmul(b(3,:),c)
rewind n+1;read(n+1,*)a ;call chk1(a)
rewind n+2;read(n+2,*)aa;call chk2(aa)
rewind n+3;read(n+3,*)aa;call chk3(aa)
contains
 subroutine chk1(b)
 integer(8),dimension(:,:)::b
 if (any(shape(b)/=(/3,3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/ 30,36,42,66,81,96,102,126,150/))>0))write(6,*) "NG"
 end subroutine
 subroutine chk2(b)
 integer(8),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/90,108,126/))>0))write(6,*) "NG"
 end subroutine
 subroutine chk3(b)
 integer(8),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/42,96,150/))>0))write(6,*) "NG"
 end subroutine
end
subroutine ss3
integer(2)::b(3,3),c(3,3),a(3,3),aa(3)
n=10
b=reshape((/(i,i=1,9)/),(/3,3/))
c=reshape((/(i,i=1,9)/),(/3,3/))
a=matmul(b,c)
call chk1(a)
call chk1(matmul(b,c))
aa=matmul(b,c(3,:))
call chk2(aa)
call chk2(matmul(b,c(3,:)))
aa=matmul(b(3,:),c)
call chk3(aa)
call chk3(matmul(b(3,:),c))
write(n+1,*)matmul(b,c)
write(n+2,*)matmul(b,c(3,:))
write(n+3,*)matmul(b(3,:),c)
rewind n+1;read(n+1,*)a ;call chk1(a)
rewind n+2;read(n+2,*)aa;call chk2(aa)
rewind n+3;read(n+3,*)aa;call chk3(aa)
contains
 subroutine chk1(b)
 integer(2),dimension(:,:)::b
 if (any(shape(b)/=(/3,3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/ 30,36,42,66,81,96,102,126,150/))>0))write(6,*) "NG"
 end subroutine
 subroutine chk2(b)
 integer(2),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/90,108,126/))>0))write(6,*) "NG"
 end subroutine
 subroutine chk3(b)
 integer(2),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/42,96,150/))>0))write(6,*) "NG"
 end subroutine
end
subroutine ss2
integer(1)::b(3,3),c(3,3),a(3,3),aa(3)
n=20
b=reshape((/(i,i=-4,4)/),(/3,3/))
c=reshape((/(i,i=-4,4)/),(/3,3/))
a=matmul(b,c)
call chk1(a)
call chk1(matmul(b,c))
aa=matmul(b,c(3,:))
call chk2(aa)
call chk2(matmul(b,c(3,:)))
aa=matmul(b(3,:),c)
call chk3(aa)
call chk3(matmul(b(3,:),c))
write(n+1,*)matmul(b,c)
write(n+2,*)matmul(b,c(3,:))
write(n+3,*)matmul(b(3,:),c)
rewind n+1;read(n+1,*)a ;call chk1(a)
rewind n+2;read(n+2,*)aa;call chk2(aa)
rewind n+3;read(n+3,*)aa;call chk3(aa)
contains
 subroutine chk1(b)
 integer(1),dimension(:,:)::b
 if (any(shape(b)/=(/3,3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/15,6,-3,6,6,6,-3,6,15/))>0))write(6,*) "NG"
 end subroutine
 subroutine chk2(b)
 integer(1),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/15,18,21/))>0))write(6,*) "NG"
 end subroutine
 subroutine chk3(b)
 integer(1),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/-3,6,15/))>0))write(6,*) "NG"
 end subroutine
end
subroutine ss1
integer(4)::b(3,3),c(3,3),a(3,3),aa(3)
n=30
b=reshape((/(i,i=1,9)/),(/3,3/))
c=reshape((/(i,i=1,9)/),(/3,3/))
a=matmul(b,c)
call chk1(a)
call chk1(matmul(b,c))
aa=matmul(b,c(3,:))
call chk2(aa)
call chk2(matmul(b,c(3,:)))
aa=matmul(b(3,:),c)
call chk3(aa)
call chk3(matmul(b(3,:),c))
write(n+1,*)matmul(b,c)
write(n+2,*)matmul(b,c(3,:))
write(n+3,*)matmul(b(3,:),c)
rewind n+1;read(n+1,*)a ;call chk1(a)
rewind n+2;read(n+2,*)aa;call chk2(aa)
rewind n+3;read(n+3,*)aa;call chk3(aa)
contains
 subroutine chk1(b)
 integer(4),dimension(:,:)::b
 if (any(shape(b)/=(/3,3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/ 30,36,42,66,81,96,102,126,150/))>0))write(6,*) "NG"
 end subroutine
 subroutine chk2(b)
 integer(4),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/90,108,126/))>0))write(6,*) "NG"
 end subroutine
 subroutine chk3(b)
 integer(4),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/42,96,150/))>0))write(6,*) "NG"
 end subroutine
end
