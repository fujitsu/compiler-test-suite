module mod1
type t1
complex(16)::ii =(2,3)
contains
final :: prc
end type

type ty
integer :: ii
class(*),allocatable:: cptr   
class(*),allocatable:: cptr00 
class(*),allocatable:: cptr01 
class(*),allocatable:: cptr02 
class(*),allocatable:: cptr03 
class(*),allocatable:: cptr04 
class(*),allocatable:: cptr05 
class(*),allocatable:: cptr06 
class(*),allocatable:: cptr07 
class(*),allocatable:: cptr08 
class(*),allocatable:: cptr09 
class(*),allocatable:: cptr10 
class(*),allocatable:: cptr11 
class(*),allocatable:: cptr12 
class(*),allocatable:: cptr13 
class(*),allocatable:: cptr14 
class(*),allocatable:: cptr15 
class(*),allocatable:: cptr16 
class(*),allocatable:: cptr17 
class(*),allocatable:: cptr18 
class(*),allocatable:: cptr19 
class(*),allocatable:: cptr20 
class(*),allocatable:: cptr21 
class(*),allocatable:: cptr22 
class(*),allocatable:: cptr23 
class(*),allocatable:: cptr24 
class(*),allocatable:: cptr25 
class(*),allocatable:: cptr26 
class(*),allocatable:: cptr27 
class(*),allocatable:: cptr28 
class(*),allocatable:: cptr29 
end type

contains
subroutine prc(dmy)
type(t1) :: dmy
print*,dmy%ii
end subroutine
end module

use  mod1
type(ty),allocatable :: obj
allocate(obj)
allocate(complex(16)::obj%cptr)
allocate(complex(16)::obj%cptr00)
allocate(complex(16)::obj%cptr01)
allocate(complex(16)::obj%cptr02)
allocate(complex(16)::obj%cptr03)
allocate(complex(16)::obj%cptr04)
allocate(complex(16)::obj%cptr05)
allocate(complex(16)::obj%cptr06)
allocate(complex(16)::obj%cptr07)
allocate(complex(16)::obj%cptr08)
allocate(complex(16)::obj%cptr09)
allocate(complex(16)::obj%cptr10)
allocate(complex(16)::obj%cptr11)
allocate(complex(16)::obj%cptr12)
allocate(complex(16)::obj%cptr13)
allocate(complex(16)::obj%cptr14)
allocate(complex(16)::obj%cptr15)
allocate(complex(16)::obj%cptr16)
allocate(complex(16)::obj%cptr17)
allocate(complex(16)::obj%cptr18)
allocate(complex(16)::obj%cptr19)
allocate(complex(16)::obj%cptr20)
allocate(complex(16)::obj%cptr21)
allocate(complex(16)::obj%cptr22)
allocate(complex(16)::obj%cptr23)
allocate(complex(16)::obj%cptr24)
allocate(complex(16)::obj%cptr25)
allocate(complex(16)::obj%cptr26)
allocate(complex(16)::obj%cptr27)
allocate(complex(16)::obj%cptr28)
allocate(complex(16)::obj%cptr29)
k=0
select type(p=>obj%cptr)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr00)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr00)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr01)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr01)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr02)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr02)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr03)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr03)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr04)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr04)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr05)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr05)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr06)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr06)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr07)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr07)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr08)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr08)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr09)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr09)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
!
select type(p=>obj%cptr10)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr10)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr11)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr11)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr12)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr12)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr13)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr13)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr14)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr14)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr15)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr15)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr16)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr16)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr17)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr17)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr18)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr18)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr19)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr19)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
!
select type(p=>obj%cptr20)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr20)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr21)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr21)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr22)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr22)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr23)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr23)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr24)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr24)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr25)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr25)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr26)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr26)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr27)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr27)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr28)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr28)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,990
select type(p=>obj%cptr29)
type is(complex(16))
  p=(2,3)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr29)
type is(complex(16))
  if (abs(p-(2,3))>0.01) print *,9001,p
  k=1
end select
if (k/=1)print *,9901
deallocate(obj)
print *,'pass'
end

