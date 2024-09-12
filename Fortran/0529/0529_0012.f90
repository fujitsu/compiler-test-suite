
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
end type

type(ty),allocatable :: obj,obj2(:)
allocate(obj)
allocate(character(1000)::obj%cptr)
allocate(character(1000)::obj%cptr00)
allocate(character(1000)::obj%cptr01)
allocate(character(1000)::obj%cptr02)
allocate(character(1000)::obj%cptr03)
allocate(character(1000)::obj%cptr04)
allocate(character(1000)::obj%cptr05)
allocate(character(1000)::obj%cptr06)
allocate(character(1000)::obj%cptr07)
allocate(character(1000)::obj%cptr08)
allocate(character(1000)::obj%cptr09)
allocate(character(1000)::obj%cptr10)
allocate(character(1000)::obj%cptr11)
allocate(character(1000)::obj%cptr12)
allocate(character(1000)::obj%cptr13)
allocate(character(1000)::obj%cptr14)
allocate(character(1000)::obj%cptr15)
allocate(character(1000)::obj%cptr16)
allocate(character(1000)::obj%cptr17)
allocate(character(1000)::obj%cptr18)
allocate(character(1000)::obj%cptr19)
k=0
select type(p=>obj%cptr)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
!
k=0
select type(p=>obj%cptr00)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr00)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr01)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr01)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr02)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr02)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr03)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr03)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr04)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr04)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr05)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr05)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr06)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr06)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr07)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr07)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr08)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr08)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr09)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr09)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
!
k=0
select type(p=>obj%cptr10)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr10)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr11)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr11)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr12)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr12)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr13)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr13)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr14)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr14)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr15)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr15)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr16)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr16)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr17)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr17)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr18)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr18)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
k=0
select type(p=>obj%cptr19)
type is(character(*))
  p=repeat('1',1000)
  k=1
end select
if (k/=1)print *,9901
k=0
select type(p=>obj%cptr19)
type is(character(*))
  if (p/=repeat('1',1000)) print *,2002
  k=1
end select
if (k/=1)print *,990
if (1==0)then
  obj2=obj
endif

print *,'pass'
end

