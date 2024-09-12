Module m1
type ty1
    integer :: i = 10
    integer, allocatable :: d(:)
end type
type,extends(ty1):: ty2
    integer :: ii = 10
end type

type tt1
    integer :: j = 20
    class(ty1), allocatable :: c(:)
end type
type,extends(tt1):: tt2
    integer :: jj = 20
end type
integer::nc=0
type q
class(tt1), pointer :: w(:)
end type
contains
function nn()
 nc=nc+1
nn=2
end function
function zz(zzz)
class(tt1), pointer :: zzz(:)
class(tt1), pointer :: zz(:)
zz=> zzz
end function
end module

subroutine s1
use m1
type(q):: g(2)
class(tt1), allocatable :: e(:)

 kn=1
allocate(tt2:: g(nn())%w(3) )
 allocate(ty2:: g(nn())%w(kn)% c(2))
 allocate(ty2:: g(nn())%w(kn+2)% c(2))
  allocate(g(nn())%w(kn)%c(1)%d(2),source=11)
  allocate(g(nn())%w(kn)%c(2)%d(2),source=12)
  allocate(g(nn())%w(kn+2)%c(1)%d(2),source=11)
  allocate(g(nn())%w(kn+2)%c(2)%d(2),source=12)

 if (g(nn())%w(1)%j /= 20) print *,211
 if (g(nn())%w(2)%j /= 20) print *,212
 if (g(nn())%w(3)%j /= 20) print *,213

 if (any(g(nn())%w(1)%c(1)%d /= 11)) print *,3211
 if (any(g(nn())%w(1)%c(2)%d /= 12)) print *,3212
 if (any(g(nn())%w(3)%c(1)%d /= 11)) print *,3221
 if (any(g(nn())%w(3)%c(2)%d /= 12)) print *,3222
k1=0
select type (z => g(nn())%w(kn)%c)
  type is(ty2)
   if (z(1)%ii/=10) print *,2221
   if (z(2)%ii/=10) print *,2222
   k1=1
end select
if (k1/=1) print *,101
k1=0
select type (z => g(nn())%w(kn+2)%c)
  type is(ty2)
   if (z(1)%ii/=10) print *,2231
   if (z(2)%ii/=10) print *,2232
   k1=1
end select
if (k1/=1) print *,121

allocate(e, stat=knn,SOURCE = zz(g(nn())%w))
if (knn/=0) print *,888

 if (e(1)%j /= 20) print *,511
 if (e(2)%j /= 20) print *,512
 if (e(3)%j /= 20) print *,513
 if (any(e(1)%c(1)%d /= 11)) print *,3311
 if (any(e(1)%c(2)%d /= 12)) print *,3312
 if (any(e(3)%c(1)%d /= 11)) print *,3321
 if (any(e(3)%c(2)%d /= 12)) print *,3322

k1=0
select type (z => e(kn)%c)
  type is(ty2)
   if (z(1)%ii/=10) print *,3221
   if (z(2)%ii/=10) print *,3222
   k1=1
end select
if (k1/=1) print *,301
k1=0
select type (z => e(kn+2)%c)
  type is(ty2)
   if (z(1)%ii/=10) print *,3231
   if (z(2)%ii/=10) print *,3232
   k1=1
end select
if (k1/=1) print *,421
end
use m1
do kkk=1,20
call s1
if (nc/=19 .and.nc/=17) print *,901
nc=0
end do

print*, "pass"

end 
