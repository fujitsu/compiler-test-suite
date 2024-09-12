subroutine s2(n1,n4,n5)
type x
integer x1
integer,allocatable,dimension(:,:) ::a,b,c
end type
type y
 integer::y1
 type(x)::y2
end type
type(y):: v

allocate (v%y2%a(-n5:-n1,-n4:-n1),stat=kkk)
allocate (v%y2%b(-n5:-n1,-n4:-n1),stat=kkk)
allocate (v%y2%c(-n5:-n1,-n4:-n1),stat=kkk)
v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(-n1:-n5:-n1,-n1:-n4:-n1),w=>v%y2%c(-n1:-n5:-n1,-n1:-n4:-n1))
 w(-n1+6:-n5+6:-n1,-n1+5:-n4+5:-n1)=p(-n1+6:-n5+6:-n1,-n1+5:-n4+5:-n1)+v%y2%b(-n1:-n5:-n1,-n1:-n4:-n1)
end associate
if (any(v%y2%c/=3)) print *,207

v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(:,:),w=>v%y2%c(:,:))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(k1+6,k2+5)=p(k1+6,k2+5)+v%y2%b(k1,k2)
end do
end do
end associate
if (any(v%y2%c/=3)) print *,208

v%y2%a=1
v%y2%b=2
associate( p=>v%y2%a(-n1:-n5:-n1,-n1:-n4:-n1),w=>v%y2%c(-n1:-n5:-n1,-n1:-n4:-n1))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(k1+6,k2+5)=p(k1+6,k2+5)+v%y2%b(k1,k2)
end do
end do
end associate
if (any(v%y2%c/=3)) print *,209
end
n1=1;n4=4;n5=5
call       s2(n1,n4,n5)
print *,'pass'
end
