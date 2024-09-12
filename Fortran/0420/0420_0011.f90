module m1
type x
  integer:: x1
end type
 type,extends(x):: y
   integer:: y1
   integer:: y2
 end type
 type z
   integer:: z1
   class(x),allocatable::z2
   integer:: z3
 end type
end

subroutine s1
use m1
type(z),allocatable::v1(:),v2(:)
allocate(v1(2),v2(2))
do n=1,2
v2(n)%z1=1
v2(n)%z3=3
allocate(y::v2(n)%z2)
k=0
select type (w=>v2(n)%z2)
 type is (y)
    w%y1=11
    w%y2=12
    w%x1=1
    k=1
end select
if (k/=1) print *,201
end do
v1=v2
do n=1,2
if (v1(n)%z1/=1) print *,101
if (v1(n)%z3/=3) print *,103
k=0
select type (w=>v1(n)%z2)
 type is (y)
    if (w%y1/=11) print *,301
    if (w%y2/=12) print *,302
    if (w%x1/=1) print *,303
    k=1
end select
if (k/=1) print *,304
end do

end
call s1
print *,'pass'
end
