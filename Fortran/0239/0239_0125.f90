subroutine s2(n1,n4,n5)
integer,allocatable,dimension(:,:) ::a,b,c
allocate (a(-n5:-n1,-n4:-n1),stat=kkk)
allocate (b(-n5:-n1,-n4:-n1),stat=kkk)
allocate (c(-n5:-n1,-n4:-n1),stat=kkk)
a=1
b=2
associate( p=>a(:,:),w=>c(:,:))
do k2=-1,-4,-1
do k1=-1,-5,-1
 w(k1+6,k2+5)=p(k1+6,k2+5)+b(k1,k2)
end do
end do
end associate
if (any(c/=3)) print *,208,c
end
n1=1;n4=4;n5=5
call       s2(n1,n4,n5)
print *,'pass'
end
