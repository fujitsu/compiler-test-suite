module m1
integer,parameter:: k1=6,k2=3
type x
integer::dummy
character(:),pointer:: b
end type
type(x):: a(k1,k2),c(k1,k2)
type(x):: d(k1,k2)
contains
subroutine s1()
forall (n=1:3,k=1:5)
  a(k+1 , n )%b=a(k, n )%b//'1'
end forall
end subroutine
subroutine s2()
do      k=1,5
do      n=1,3
  d(k , n )%b=c(k, n )%b//'1'
end do
end do
do      k=1,5
do      n=1,3
  c(k+1 , n )%b=d(k, n )%b
end do
end do
end subroutine
end
use m1
do n1=1,k1
do n2=1,k2
allocate(character::a(n1,n2)%b)
allocate(character::c(n1,n2)%b)
allocate(character::d(n1,n2)%b)
end do
end do
i=ichar('a')
do n2=1,k2
do n1=1,k1
a(n1,n2)%b=char(i)
c(n1,n2)%b=char(i)
i=i+1
end do
end do
call s1()
call s2()
do n2=1,k2
do n1=1,k1
if (   (a(n1,n2)%b/= c(n1,n2)%b ))print *,101
end do
end do
print *,'pass'
end
