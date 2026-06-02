module m1

IMPLICIT NONE
integer :: err 

TYPE base
  INTEGER(KIND=8) ::k1
END TYPE
 
TYPE ,EXTENDS(base)::ext
  INTEGER(KIND=8) :: k2
END TYPE 

type za
  INTEGER(KIND=8) ::k1
CLASS(*), allocatable:: alc
end type
type zp
  INTEGER(KIND=8) ::k1
CLASS(*), pointer    :: ptr
end type
end
subroutine s1
use m1
type(zp)::vp
type(za)::va,va2,va3,va4
CLASS(*), ALLOCATABLE:: src
type(base)::base_v
base_v=base(11)

allocate(ext::src, STAT=err)
select type(src)
  type is(ext)
    src%k1=1
    src%k2=2
end select
if( err /= 0 ) print *, 10001

allocate(va2%alc,va3%alc,source=base_v)

allocate(vp%ptr, va%alc, va2%alc,va3%alc,va4%alc,SOURCE=src, STAT = err)
if( err == 0 ) print *, 10002
k=0
select type(p=>va2%alc)
  type is(base)
    k=1
    if (p%k1/=11) print *,100128
end select
if (k/=1) print *,128
k=0
select type(p=>va3%alc)
  type is(base)
    k=1
    if (p%k1/=11) print *,102128
end select
if (k/=1) print *,128
if (allocated(va4%alc)) print *,10318

k=0
select type(p=>vp%ptr)
  type is(ext)
    if (p%k1/=1) print *,1001
    if (p%k2/=2) print *,1002
    k=1
end select
if (k/=1) print *,101
k=0
select type(p=>va%alc)
  type is(ext)
    if (p%k1/=1) print *,2001
    if (p%k2/=2) print *,2002
    k=1
end select
if (k/=1) print *,191
end
call s1
print *,'sngg151q : pass'
END 
