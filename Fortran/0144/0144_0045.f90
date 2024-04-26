module m1
integer,parameter:: k2=3
logical(8)  :: b1(k2,k2),b2(k2,k2)
contains
subroutine s1()
forall (n=1:2)
  b1(n,:)=b1(n,:).or. .false.
end forall
end subroutine
subroutine s2()
logical(8):: w(k2,k2)
do      n=1,2
  w(n,:)=b2(n,:).or..false.
end do
do      n=1,2
  b2(n+1,: )=w(n,: )
end do
end subroutine
end
use m1
i=101
do n2=1,k2
do n3=1,3
b1(n2,n3)=.true.
b2(n2,n3)=.true.
i=i+1
end do
end do
call s1()
call s2()
if (any(b1.neqv. b2))print *,101
print *,'pass'
end
