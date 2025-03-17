integer a(100)
m=10
do i=1,100,size((/(k,k=1,m)/))
  a(i)=i
end do
if (any(a(1:100:10)/=(/1,11,21,31,41,51,61,71,81,91/)))write(6,*) "NG"
n=size((/(k,k=1,m)/))
do i=1,100,n
  a(i)=i
end do
if (any(a(1:100:10)/=(/1,11,21,31,41,51,61,71,81,91/)))write(6,*) "NG"
print *,'pass'
end
