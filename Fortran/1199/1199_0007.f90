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
type(za)::va
CLASS(*), ALLOCATABLE:: src

allocate(ext::src, STAT=err)
select type(src)
  type is(ext)
    src%k1=1
    src%k2=2
end select
if( err /= 0 ) print *, 10001

allocate(vp%ptr, va%alc, SOURCE=src, STAT = err)
if( err /= 0 ) print *, 10002

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
print *,'sngg148q : pass'
END 
