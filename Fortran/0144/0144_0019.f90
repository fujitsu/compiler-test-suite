module m1
integer,parameter:: k2=3
type x
integer::dummy
character(:),pointer:: b(:,:)
end type
type(x):: a(k2),c(k2),d(k2)
contains
subroutine s1()
forall (n=1:2)
  a(n+1 )%b=a(n )%b//'1'
end forall
end subroutine
subroutine s2()
do      n=1,2
  d( n )%b=c( n )%b//'1'
end do
do      n=1,2
  c(n+1)%b=d( n )%b
end do
end subroutine
end
use m1
do n2=1,k2
allocate(character::a(n2)%b(2,3))
allocate(character::c(n2)%b(2,3))
allocate(character::d(n2)%b(2,3))
end do
i=ichar('a')
do n2=1,k2
do n3=1,3
do n4=1,2
a(n2)%b(n4,n3)=char(i+n3+n4)
c(n2)%b(n4,n3)=char(i+n3+n4)
i=i+1
end do
end do
end do
call s1()
call s2()
do n2=1,k2
if (any(a(n2)%b/= c(n2)%b ))print *,101
end do
print *,'pass'
end
