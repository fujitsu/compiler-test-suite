call ss1(-3)
print *,'pass'
end
subroutine ss1(i)
real(4),pointer::b(:,:),c(:,:),a(:,:),aa(:),d(:)
n=125
allocate(b(i,i),c(i,i),a(i,i),aa(i),d(i))
b=1
c=2
d=1
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
rewind n+1;read(n+1,*,end=1)k ;write(6,*) "NG"
1 rewind n+2;read(n+2,*,end=2)k;write(6,*) "NG"
2 rewind n+3;read(n+3,*,end=3)k;write(6,*) "NG"
3 return
contains
 subroutine chk1(b)
 real(4),dimension(:,:)::b
 if (any(shape(b)/=(/0,0/)))write(6,*) "NG"
 end subroutine
 subroutine chk2(b)
 real(4),dimension(:)::b
 if (any(shape(b)/=(/0/)))write(6,*) "NG"
 end subroutine
 subroutine chk3(b)
 real(4),dimension(:)::b
 if (any(shape(b)/=(/0/)))write(6,*) "NG"
 end subroutine
end
