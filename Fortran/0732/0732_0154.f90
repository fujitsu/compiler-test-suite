integer,parameter::i=3
real(4)::b(i,i),c(i,i),a(i,i),aa(i),d(i)
b=reshape((/(j,j=1,9)/),(/3,3/))
c=reshape((/(j,j=1,9)/),(/3,3/))
d=reshape((/(j,j=2,4)/),(/3/))
call ss1(i,a,b,c,d,aa)
print *,'pass'
end
subroutine ss1(i,a,b,c,d,aa)
real(4)::b(i,i),c(i,i),a(i,i),aa(i),d(i)
n=40
a=matmul(b,c)
call chk1(a)
call chk1(matmul(b,c))
aa=matmul(b,d)
call chk2(aa)
call chk2(matmul(b,d))
aa=matmul(d,c)
call chk3(aa)
call chk3(matmul(d,c))
write(n+1,*)matmul(b,c)
write(n+2,*)matmul(b,d)
write(n+3,*)matmul(d,c)
rewind n+1;read(n+1,*)a ;call chk1(a)
rewind n+2;read(n+2,*)aa;call chk2(aa)
rewind n+3;read(n+3,*)aa;call chk3(aa)
contains
 subroutine chk1(b)
 real(4),dimension(:,:)::b
 if (any(shape(b)/=(/i,i/)))write(6,*) "NG"
 if (any(abs((/b/)-(/30.,36.,42.,66.,81.,96.,102.,126.,150./))>0.0001))write(6,*) "NG"
 end subroutine
 subroutine chk2(b)
 real(4),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/42.,51.,60./))>0.0001))write(6,*) "NG"
 end subroutine
 subroutine chk3(b)
 real(4),dimension(:)::b
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/20.,47.,74./))>0.0001))write(6,*) "NG"
 end subroutine
end