real,allocatable::a(:,:),c(:,:),b(:,:)
i1=1;i2=2;i3=3;i4=4
allocate(a(3,3),b(3,3),c(3,3))
b=reshape((/(i,i=1,9)/),(/3,3/))
c=reshape((/(i,i=1,9)/),(/3,3/))
a=matmul(matmul(matmul(b,c),matmul(b,c)),matmul(matmul(b,c),matmul(b,c)))
call chk(a)
a=matmul(matmul(matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3)),matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3))),matmul(matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3)),matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3))))
call chk(a)
a=matmul(matmul(matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1)),&
matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1))),matmul(matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1)),&
matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1))))
call chk(a)
call chk(matmul(matmul(matmul(b,c),matmul(b,c)),matmul(matmul(b,c),matmul(b,c))))
call chk(matmul(matmul(matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3)),matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3))),matmul(matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3)),matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3)))))
call chk(matmul(matmul(matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1)),&
matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1))),matmul(matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1)),&
matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1)))))
write(1,*)(matmul(matmul(matmul(b,c),matmul(b,c)),matmul(matmul(b,c),matmul(b,c))))
write(1,*)(matmul(matmul(matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3)),matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3))),matmul(matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3)),matmul(b(i1:i3,i1:i3),c(i1:i3,i1:i3)))))
write(1,*)(matmul(matmul(matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1)),&
matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1))),matmul(matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1)),&
matmul(b(i3-i2:i1+i2,i4-i3:i4-i1),c(i3-i2:i1+i2,i4-i3:i4-i1)))))
rewind 1
do ix=1,3
read(1,*) a;call chk(a)
end do
print *,'pass'
contains
 subroutine chk(b)
 real,dimension(:,:)::b
 if (any(shape(b)/=(/3,3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/510008384.,626654208.,743300096.,1.15496781E+09,1.41912461E+09,1.68328141E+09,1.79992730E+09,2.21159501E+09,2.62326272E+09/)&
)>1.e+7))write(6,*) "NG"
 end subroutine
end
