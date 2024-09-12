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
complex(16)::v=(2,3)
type(ty),allocatable :: obj,obj2(:)
allocate(obj)
allocate(obj%cptr,source=v)
allocate(obj%cptr00,source=v)
allocate(obj%cptr01,source=v)
allocate(obj%cptr02,source=v)
allocate(obj%cptr03,source=v)
allocate(obj%cptr04,source=v)
allocate(obj%cptr05,source=v)
allocate(obj%cptr06,source=v)
allocate(obj%cptr07,source=v)
allocate(obj%cptr08,source=v)
allocate(obj%cptr09,source=v)
allocate(obj%cptr10,source=v)
allocate(obj%cptr11,source=v)
allocate(obj%cptr12,source=v)
allocate(obj%cptr13,source=v)
allocate(obj%cptr14,source=v)
allocate(obj%cptr15,source=v)
allocate(obj%cptr16,source=v)
allocate(obj%cptr17,source=v)
allocate(obj%cptr18,source=v)
allocate(obj%cptr19,source=v)
allocate(obj%cptr20,source=v)
allocate(obj%cptr21,source=v)
allocate(obj%cptr22,source=v)
allocate(obj%cptr23,source=v)
allocate(obj%cptr24,source=v)
allocate(obj%cptr25,source=v)
allocate(obj%cptr26,source=v)
allocate(obj%cptr27,source=v)
allocate(obj%cptr28,source=v)
allocate(obj%cptr29,source=v)
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
if (00==1) then
  obj2=obj
endif
print *,'pass'
end

