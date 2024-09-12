module m1
type ty1
    integer :: i = 10
end type
type,extends(ty1):: ty2
    integer, allocatable :: d(:)
end type

type tt1
    integer :: j = 20
end type
type,extends(tt1):: tt2
    class(ty1), allocatable :: c(:)
end type
end module

subroutine s1
use m1
class(tt1), pointer :: w(:)
class(tt1), allocatable :: e(:)

allocate(tt2:: w(3) )
k1=0
select type(w)
type is( tt2)
 k1=1
 kn=1
 allocate(ty2:: w(kn)% c(2))
 k2=0
 select type (x=> w(kn)% c )
   type is( ty2)
      allocate(x(2)%d(2),source=11)
      k2=1
 end select
 if (k2/=1) print *,201
 k1=1
 kn=3
 allocate(ty2:: w(kn)% c(2))
 k2=0
 select type (x=> w(kn)% c )
   type is( ty2)
      allocate(x(2)%d(2),source=11)
      k2=1
 end select
 if (k2/=1) print *,201
end select
 if (w(1)%j /= 20) print *,211
 if (w(2)%j /= 20) print *,212
 if (w(3)%j /= 20) print *,213
if (k1/=1) print *,101

allocate(e, SOURCE = w)
k1=0
select type(e)
type is( tt2)
 k1=1
 k2=0
 select type (x=> e(1)% c )
   type is( ty2)
      if (   (x(2)%i/=10)) print *,311
      if (any(x(2)%d/=11)) print *,312
      k2=1
 end select
 if (k2/=1) print *,211
 k2=0
 select type (x=> e(3)% c )
   type is( ty2)
      if (   (x(2)%i/=10)) print *,321
      if (any(x(2)%d/=11)) print *,322
      k2=1
 end select
 if (k2/=1) print *,221
end select
 if (e(1)%j /= 20) print *,221
 if (e(2)%j /= 20) print *,222
 if (w(3)%j /= 20) print *,223
if (k1/=1) print *,111
end
call s1
print*, "pass"

end 
