module m1
parameter (k1=40)
integer,allocatable::a1(:,:,:)
integer,allocatable::a2(:,:,:)
integer::n0=0
contains
subroutine s1()
forall (n1=1:k1-3)
forall (n2=1:39:n0+n1+1)
   a1(:,n1,n2+1) = a1(:,n1,n2)+1
end forall
end forall
end subroutine
subroutine s2()
integer:: x(k1,k1,k1)
x=0
do      n1=1,k1-1
do       n2=1,39,n0+n1+1
   x(:,n1,n2) = a2(:,n1,n2) +1
end do    
end do    
do      n1=1,k1-3
do       n2=1,39,n0+n1+1
   a2(:,n1,n2+1) = x(:,n1,n2) 
end do    
end do    
end subroutine
end
use m1
allocate( a1(k1,k1,k1))
allocate( a2(k1,k1,k1))
a1=0;a2=0
call s1()
call s2()
if (any(a1/=a2)) print *,101
print *,'pass'
end
