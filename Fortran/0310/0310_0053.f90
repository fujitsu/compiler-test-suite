program main

dimension a(100),b(100),d(100)
c = 2.0
do i=1,100
b(i)=i
end do

do i=1,100
a(i)=b(i)/c
end do

t=1.0/c
do i=1,100
d(i)=b(i)*t
end do

do i=1,100
if(a(i).ne.d(i)) then
print *,"??? NG ???"
print *,"a(i) == ",a(i)
print *,"d(i) == ",d(i)
endif
end do
print *,"*** OK ***"

end
