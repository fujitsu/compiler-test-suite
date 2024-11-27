module m1
implicit none
type x
  integer,allocatable::x1(:)
end type
type y
  type(x),allocatable::y1
end type
contains
function f(k) result(r)
class(*),allocatable::r(:)
integer::k
integer,allocatable::z(:)
type(x),allocatable::xv,xvv
type(y),allocatable::yv
select case(k)
  case(1)
    allocate(r(2),source=1_1)
  case(2)
    allocate(r(2),source=2_2)
  case(3)
    allocate(r(2),source=3_4)
  case(4)
    allocate(r(2),source=4_8)
  case(5)
    allocate(r(2),source=1.1_4)
  case(6)
    allocate(r(2),source=1.2_8)
  case(7)
    allocate(r(2),source=1.3_16)
  case(8)
    allocate(r(2),source=(1.1_4,1.1_4))
  case(9)
    allocate(r(2),source=(1.2_8,1.2_8))
  case(10)
    allocate(r(2),source=(1.3_16,1.3_16))
  case(11)
    allocate(r(2),source=.true._1)
  case(12)
    allocate(r(2),source=.true._4)
  case(13)
    allocate(r(2),source=.true._8)
  case(14)
    allocate(r(2),source='x')
  case(15)
    allocate(r(2),source='123456789abcdef')
  case(16)
    allocate(z(2),source=[1,2])
    allocate(r(2),source=x(z))
    z=-z
    select type (r)
      type is(x)
    end select
  case(17)
    allocate(z(2),source=[1,2])
    allocate(xv)
    xv%x1=z
    xvv=xv
    yv=y(xvv)
    allocate(r(2),source=yv)
    z=-z
    xv%x1=-xv%x1
    select type (r)
      type is(y)
    end select
end select
end function
end
subroutine s1
use m1
implicit none
integer::k,kk
do k=1,17
kk=0
select type(p=>f(k))
 type is( x )
   if (k/=16) print *,1016,k
   if (any(p(1)%x1/=[1,2])) print *,2016
   if (any(p(2)%x1/=[1,2])) print *,2016
   kk=1
 type is( y )
   if (k/=17) print *,1017,k
   if (any(p(1)%y1%x1/=[1,2])) print *,2017
   if (any(p(2)%y1%x1/=[1,2])) print *,2017
   kk=1
 type is(logical(8))
   if (k/=13) print *,1013,k
   if (any(.not.p)) print *,2013
   if (kind(p)/=8) print *,20131
   kk=1
 type is(logical(4))
   if (k/=12) print *,1012
   if (any(.not.p)) print *,2012
   if (kind(p)/=4) print *,20121
   kk=1
 type is(logical(1))
   if (k/=11) print *,1011
   if (any(.not.p)) print *,2011
   if (kind(p)/=1) print *,20111
   kk=1
 type is(character(*))
   if (k/=14.and.k/=15) print *,1014
   if (kind(p)/=1) print *,20141
   if (k==14) then
     if (len(p)/=1) print *,20142
     if (any(p/='x')) print *,20145
   else
     if (len(p)/=15) print *,20143
     if (any(p/='123456789abcdef')) print *,20144
   end if
   kk=1
 type is(complex(16))
   if (k/=10) print *,1010
   if (any(p/=(1.3_16,1.3_16))) print *,2010
   kk=1
 type is(complex(8))
   if (k/=9) print *,1009
   if (any(p/=(1.2_8,1.2_8))) print *,2009
   kk=1
 type is(complex(4))
   if (k/=8) print *,1008
   if (any(p/=(1.1_4,1.1_4))) print *,2008
   kk=1
 type is(real(16))
   if (k/=7) print *,1007
   if (any(p/=1.3_16)) print *,2007
   kk=1
 type is(integer(1))
   if (k/=1) print *,1001
   if (any(p/=1_1)) print *,2001
   kk=1
 type is(integer(2))
   if (k/=2) print *,1002
   if (any(p/=2_2)) print *,2002
   kk=1
 type is(integer(4))
   if (k/=3) print *,1003
   if (any(p/=3_4)) print *,2003
   kk=1
 type is(integer(8))
   if (k/=4) print *,1004
   if (any(p/=4_8)) print *,2004
   kk=1
 type is(real(8)   )
   if (k/=6) print *,1006
   if (any(p/=1.2_8)) print *,2006
   kk=1
 type is(real      )
   if (k/=5) print *,1005
   if (any(p/=1.1_4)) print *,2005
   kk=1
end select
if (kk/=1) print *,90001
kk=0
end do
end
do j=1,10
call s1
end do
print *,'pass'
end
  

