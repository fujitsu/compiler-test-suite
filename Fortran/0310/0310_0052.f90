subroutine sub(a,c,n,f)
dimension a(n),c(n)

b=100.0
do i=1,n
if(f.ne.0.0) then
a(i)=b/f
else
a(i)=0.0
endif
end do

t=b/f
do i=1,n
if(f.ne.0.0) then
c(i)=t
else
c(i)=0.0
endif
end do

do i=1,n
if(a(i).ne.c(i)) print *,"??? NG ???"
end do
end subroutine

program main
dimension a(100),c(100)
call sub(a,c,100,5.0)
print *,"*** OK ***"
end
