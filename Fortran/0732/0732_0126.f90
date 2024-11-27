real,allocatable::b(:,:),c(:,:),a(:,:)
allocate(b(3,2),c(2,4),a(3,4))
b=reshape((/1,2,3,4,5,6/),(/3,2/))
c=reshape((/1,2,3,4,5,6,7,8/),(/2,4/))
a=matmul(b,c)
call chk(a)
print *,'pass'
contains
 subroutine chk(b)
 real,dimension(:,:)::b
 if (any(shape(b)/=(/3,4/)))write(6,*) "NG"
 if (any(abs((/b/)-(/9.,12.,15.,19.,26.,33.,29.,40.,51.,39.,54.,69./))>0.0001))write(6,*) "NG"
 end subroutine
end
