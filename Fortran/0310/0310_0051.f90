subroutine sub(a,b,c,n)
dimension a(n),b(n),c(n)
integer :: j=50
f=3

do i=1,n
b(i) = 5.0*i
end do

do i=1,n
if(j.le.n) then
a(i)=b(j)*f
endif
end do

t=b(j)*f
do i=1,n
if(j.le.n) then
c(i)=t
endif
end do

do i=1,n
if(j.le.n) then
if(a(i).ne.c(i)) print *,"??? NG ???"
endif
end do
end subroutine

program main
dimension a(100),b(100),c(100)
call sub(a,b,c,100)
print *,"*** OK ***"
end
