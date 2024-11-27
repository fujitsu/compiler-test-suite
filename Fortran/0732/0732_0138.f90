real::a(-6:-4,-8:-5),c(-2:-1,-14:-11)
data c/1,2,3,4,5,6,7,8/
real,allocatable::b(:,:)
i11=-11;i12=-12;i13=-13;i14=-14;i2=-2;i1=-1
allocate(b(-13:-11,-12:-11))
b=reshape((/1,2,3,4,5,6/),(/3,2/))
a=matmul(b+b-b,c+c-c)
call chk(a)
a=matmul(b(i13:i11,i12:i11)+b(i13:i11,i12:i11)-b(i13:i11,i12:i11),c(i2:i1,i14:i11)+c(i2:i1,i14:i11)-c(i2:i1,i14:i11))
call chk(a)
call chk(matmul(b+b-b,c+c-c))
call chk(&
  matmul(b(i13:i11,i12:i11)+b(i13:i11,i12:i11)-b(i13:i11,i12:i11),&
  c(i2:i1,i14:i11)+c(i2:i1,i14:i11)-c(i2:i1,i14:i11)))
write(1,*)matmul(b+b-b,c+c-c)
write(1,*)matmul(b(i13:i11,i12:i11)+b(i13:i11,i12:i11)-b(i13:i11,i12:i11),c(i2:i1,i14:i11)+c(i2:i1,i14:i11)-c(i2:i1,i14:i11))
write(1,*)(matmul(b+b-b,c+c-c))
write(1,*)(&
  matmul(b(i13:i11,i12:i11)+b(i13:i11,i12:i11)-b(i13:i11,i12:i11),&
  c(i2:i1,i14:i11)+c(i2:i1,i14:i11)-c(i2:i1,i14:i11)))
rewind 1
do ix=1,4
read(1,*) a;call chk(a)
end do
print *,'pass'
contains
 subroutine chk(b)
 real,dimension(:,:)::b
 if (any(shape(b)/=(/3,4/)))write(6,*) "NG"
 if (any(abs((/b/)-(/9.,12.,15.,19.,26.,33.,29.,40.,51.,39.,54.,69./))>0.0001))write(6,*) "NG"
 end subroutine
end
