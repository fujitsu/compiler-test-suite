subroutine s1
integer::i=1, j=1,k=1
integer(8)::a(1:16,1:6)=3, b(1:16,1:16,1:6)=5, c(1:16,1:16,1:3)=7
do i=3,16
b(i,j,1)=0
b(i,j,2)=0
do concurrent (j=1:16)
b(2,j,1)=c(2,j,1)
b(2,j,2)=c(2,j,2)
end do
b(i,j,3)=0
b(i,j,4)=0
a(j,6)=0
end do
if (sum(a)/=285) print *,101,sum(a)
if (sum(b)/=7464) print *,102,sum(b)
if (sum(c)/=5376) print *,103,sum(c)
end
subroutine s2
integer::i=1, j=1,k=1
integer(8)::a(1:16,1:6)=3, b(1:16,1:16,1:6)=5, c(1:16,1:16,1:3)=7
do i=3,16
b(i,j,1)=0
b(i,j,2)=0
do jj=1,16
b(2,jj,1)=c(2,jj,1)
b(2,jj,2)=c(2,jj,2)
end do
b(i,j,3)=0
b(i,j,4)=0
a(j,6)=0
end do
if (sum(a)/=285) print *,201,sum(a)
if (sum(b)/=7464) print *,202,sum(b)
if (sum(c)/=5376) print *,203,sum(c)
end
call s1
call s2
print *,'pass'
end
