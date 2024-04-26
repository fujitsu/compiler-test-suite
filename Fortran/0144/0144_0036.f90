module m1
integer,parameter:: k2=3
character(:),pointer:: b1(:,:),b2(:,:)
contains
subroutine s1()
forall (n=1:2)
  b1(n+1,: )=b1(n,:)//'1'
end forall
end subroutine
subroutine s2()
character(:),pointer:: w(:,:)
allocate( character(2):: w(3,3) )
do      n=1,2
  w(n,:)=b2(n,:)//'1'
end do
do      n=1,2
  b2(n+1,:)=w(n,:)
end do
end subroutine
end
use m1
allocate( character(2):: b1(3,3) )
allocate( character(2):: b2(3,3) )
i=ichar('a')
do n2=1,k2
do n3=1,3
b1(n2,n3)=char(i+n3+n2)
b2(n2,n3)=char(i+n3+n2)
i=i+1
end do
end do
call s1()
call s2()
if (any(b1/= b2))print *,101
print *,'pass'
end
