module m1
 type x1
    integer::y1(3)
 end type
 type x2
   integer:: w0
   type(x1),allocatable:: w1(:)
 end type
 type x3
   integer:: z0
   type(x2):: z1(2)
 end type
 type(x3)::a,b,c
 integer::kk1=1
contains
subroutine s1(k1)
forall (n1=k1:2,n1>=kk1)
  a%z1(2)%w1(:)%y1(n1+1)= a%z1(2)%w1(:)%y1(n1)+n1
end forall
end subroutine
subroutine s2(k1)
do      n1=k1,2
  c%z1(2)%w1(:)%y1(n1)= b%z1(2)%w1(:)%y1(n1)+n1
end do
do      n1=k1,2
  b%z1(2)%w1(:)%y1(n1+1)= c%z1(2)%w1(:)%y1(n1)
end do
end subroutine
end
use m1
allocate(a%z1(2)%w1(3))
allocate(b%z1(2)%w1(3))
allocate(c%z1(2)%w1(3))
do n=1,3
a%z1(2)%w1(n)%y1=n*10+[1,2,3]
b%z1(2)%w1(n)%y1=n*10+[1,2,3]
c%z1(2)%w1(n)%y1=0
end do
call s1(3)
call s2(3)
do n=1,3
if (any(a%z1(2)%w1(n)%y1/=b%z1(2)%w1(n)%y1)) then
  print *,101
  print *,a%z1(2)%w1(n)%y1
  print *,b%z1(2)%w1(n)%y1
endif
end do
print *,'pass'
end
   

  
  

