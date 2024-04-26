module m1
integer,parameter:: k2=3
type x
integer::dummy
character(:),pointer:: b
end type
type(x):: a(k2),c(k2)
character(2):: z(3),w(3),d(3)
contains
subroutine s1()
forall (n=1:2)
  z(n+1 )=a(n )%b//'1'
end forall
end subroutine
subroutine s2()
do      n=1,2
  d( n )=c( n )%b//'1'
end do
do      n=1,2
  w(n+1)=d( n )
end do
end subroutine
end
use m1
do n2=1,k2
allocate(character::a(n2)%b)
allocate(character::c(n2)%b)
end do
i=ichar('a')
do n2=1,k2
a(n2)%b=char(i)
c(n2)%b=char(i)
z(n2)=char(i)
w(n2)=char(i)
i=i+1
end do
call s1()
call s2()
do n2=1,k2
if (   (a(n2)%b/= c(n2)%b ))print *,101
if (   (z(n2)/= w(n2) ))print *,102
end do
print *,'pass'
end
