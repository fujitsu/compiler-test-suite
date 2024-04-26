dimension a(100),b(100)
x = 10.0
do i=1,100
if(x.gt.0.0) then
a(i)=alog(x)
endif
end do

t=alog(x)
do i=1,100
if(x.gt.0.0) then
b(i)=t
endif
end do

do i=1,100
if(a(i).ne.b(i)) print *,"??? NG ???"
end do
print *,"*** OK ***"
end
