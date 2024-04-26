module m1
integer,allocatable::a1(:,:)
integer,allocatable::a2(:,:)
contains
subroutine s1()
forall (n1=1:2)
 forall (n2=1:n1)
   a1(n1,n2) = a1(n1,n2)+1
  end forall
end forall
end subroutine
subroutine s2()
do      n1=1,2
do       n2=1,n1
   a2(n1,n2) = a2(n1,n2) +1
  end do    
end do     
end subroutine
end
use m1
allocate ( a1(2,3) )
allocate ( a2(2,3) )
a1=0;a2=0
call s1()
call s2()
if (any(a1/=a2)) print *,101
print *,'pass'
end
