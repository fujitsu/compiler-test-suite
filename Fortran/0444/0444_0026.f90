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
integer::nc=0
contains
function nn()
 nc=nc+1
nn=2
end functioN
end module

subroutine s1
use m1
type q
class(tt1), pointer :: w(:)
end type
type(q):: g(2)
class(tt1), allocatable :: e(:)

allocate(tt2:: g(nn())%w(3) )
k1=0
select type(xx=>g(nn())%w)
type is( tt2)
 k1=1
 kn=1
 allocate(ty2:: xx(kn)% c(2))
 k2=0
 select type (x=> xx(kn)% c )
   type is( ty2)
      allocate(x(2)%d(2),source=11)
      k2=1
 end select
 if (k2/=1) print *,201
 k1=1
 kn=3
 allocate(ty2:: xx(kn)% c(2))
 k2=0
 select type (x=> xx(kn)% c )
   type is( ty2)
      allocate(x(2)%d(2),source=11)
      k2=1
 end select
 if (k2/=1) print *,201
end select
 if (g(nn())%w(1)%j /= 20) print *,211
 if (g(nn())%w(2)%j /= 20) print *,212
 if (g(nn())%w(3)%j /= 20) print *,213
if (k1/=1) print *,101

allocate(e, SOURCE = g(nn())%w)
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
 if (g(nn())%w(3)%j /= 20) print *,223
if (k1/=1) print *,111
end
use m1
call s1
if (nc/=8 .and. nc/=7) print *,9011,nc
print*, "pass"

end 
