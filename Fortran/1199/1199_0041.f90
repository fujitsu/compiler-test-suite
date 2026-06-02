module m1

IMPLICIT NONE
integer :: err 

TYPE b
  INTEGER(KIND=8) ::n1
END TYPE
TYPE ,EXTENDS(b)::e
  character(:),allocatable :: n2
END TYPE

TYPE base
  INTEGER(KIND=8) ::k1
 class(b),allocatable :: k21
 character(:),allocatable::k12
END TYPE
 
TYPE ,EXTENDS(base)::ext
  INTEGER(KIND=8),allocatable :: k2
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
type(zp)::vp(2)
type(za),dimension(2)::va,va2,va3,va4
CLASS(*), ALLOCATABLE:: src
type(base)::base_v
character(2)::ch='12'

    class(b),allocatable::k21v
    allocate(e::k21v)
   select type(p=>k21v)
      type is(e)
        p%n1=101
        allocate(p%n2,source='12')
    end select

base_v=base(11,k21v,ch)

allocate(ext::src, STAT=err)
select type(src)
  type is(ext)
src%k21=k21v
    src%k1=1
    allocate(src%k2,source=2_8)
  allocate(src%k12,source='12')
end select
if( err /= 0 ) print *, 10001
n=2

allocate(va2(n)%alc,va3(n)%alc,source=base_v)

allocate(vp(n)%ptr, va(n)%alc, va2(n)%alc,va3(n)%alc,va4(n)%alc,SOURCE=src, STAT = err)
if( err == 0 ) print *, 10002
select type(src)
  type is(ext)
    src%k2=-2
src%k12='ab'
   select type(p=>src%k21)
      type is(e)
        p%n2='ab'
    end select
end select
k=0
select type(p=>va2(n)%alc)
  type is(base)
    if (p%k1/=11) print *,100128
   if (p%k12/='12') print *,190128
  select type(q=>p%k21)
      type is(e)
    k=1
        if (q%n1/=101) print *,1761
        if (q%n2/='12') print *,17615
    end select
end select
if (k/=1) print *,128
k=0
select type(p=>va3(n)%alc)
  type is(base)
 select type(q=>p%k21)
      type is(e)
    k=1
        if (q%n1/=101) print *,17613
        if (q%n2/='12') print *,176153
    end select
    if (p%k1/=11) print *,102128
   if (p%k12/='12') print *,190128
end select
if (k/=1) print *,128
if (allocated(va4(n)%alc)) print *,10318

k=0
select type(p=>vp(n)%ptr)
  type is(ext)
    if (p%k1/=1) print *,1001
    if (p%k2/=2) print *,1002
   if (p%k12/='12') print *,180128
  select type(q=>p%k21)
      type is(e)
    k=1
        if (q%n1/=101) print *,27613
        if (q%n2/='12') print *,276153
    end select
end select
if (k/=1) print *,101
k=0
select type(p=>va(n)%alc)
  type is(ext)
    if (p%k1/=1) print *,2001
    if (p%k2/=2) print *,2002
  if (p%k12/='12') print *,170128
select type(q=>p%k21)
      type is(e)
        if (q%n1/=101) print *,37613
        if (q%n2/='12') print *,376153
    k=1
    end select
end select
if (k/=1) print *,191
end
call s1
print *,'sngg184q : pass'
END 
