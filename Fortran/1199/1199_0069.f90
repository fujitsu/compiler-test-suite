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
END TYPE
 
TYPE ,EXTENDS(base)::ext
  INTEGER(KIND=8),allocatable :: k2
END TYPE 

type za
  INTEGER(KIND=8) ::k1
CLASS(base), allocatable:: alc(:)
end type
type zp
  INTEGER(KIND=8) ::k1
CLASS(base), pointer    :: ptr(:)
end type
end
subroutine s1
use m1
type(zp)::vp(2)
type(za),dimension(2)::va,va2,va3,va4
CLASS(base), ALLOCATABLE:: src(:)
type(base)::base_v(2)

    class(b),allocatable::k21v
    allocate(e::k21v)
   select type(p=>k21v)
      type is(e)
        p%n1=101
        allocate(p%n2,source='12')
    end select

base_v=base(11,k21v)

allocate(ext::src(2), STAT=err)
select type(src)
  type is(ext)
    src(2)%k1=1
   src(2)%k21=k21v
    allocate(src(2)%k2,source=2_8)
end select
if( err /= 0 ) print *, 10001
n=2

allocate(va2(n)%alc(2),va3(n)%alc(2),source=base_v)

allocate(vp(n)%ptr, va(n)%alc, va2(n)%alc,va3(n)%alc,va4(n)%alc,SOURCE=src, STAT = err)
if( err == 0 ) print *, 10002
select type(src)
  type is(ext)
    src(2)%k2=-2
  select type(p=>src(2)%k21)
      type is(e)
        p%n2='ab'
    end select
end select
k=0
select type(p=>va2(n)%alc)
  type is(base)
  select type(q=>p(2)%k21)
      type is(e)
    k=1
        if (q%n1/=101) print *,1761
        if (q%n2/='12') print *,17615
    end select
    if (p(2)%k1/=11) print *,100128
end select
if (k/=1) print *,128
k=0
select type(p=>va3(n)%alc)
  type is(base)
 select type(q=>p(2)%k21)
      type is(e)
    k=1
        if (q%n1/=101) print *,17613
        if (q%n2/='12') print *,176153
    end select
    if (p(2)%k1/=11) print *,102128
end select
if (k/=1) print *,128
if (allocated(va4(n)%alc)) print *,10318

k=0
select type(p=>vp(n)%ptr)
  type is(ext)
    if (p(2)%k1/=1) print *,1001
    if (p(2)%k2/=2) print *,1002
 select type(q=>p(2)%k21)
      type is(e)
        if (q%n1/=101) print *,27613
        if (q%n2/='12') print *,276153
    k=1
    end select
end select
if (k/=1) print *,101
k=0
select type(p=>va(n)%alc)
  type is(ext)
    if (p(2)%k1/=1) print *,2001
    if (p(2)%k2/=2) print *,2002
  select type(q=>p(2)%k21)
      type is(e)
        if (q%n1/=101) print *,37613
        if (q%n2/='12') print *,376153
    k=1
    end select
end select
if (k/=1) print *,191
end
call s1
print *,'sngg212q : pass'
END 
