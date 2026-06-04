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
  class(b),allocatable :: k2
END TYPE 

type za
  INTEGER(KIND=8) ::k1
CLASS(base), allocatable:: alc
end type
type zp
  INTEGER(KIND=8) ::k1
CLASS(base), pointer    :: ptr
end type
end
subroutine s1
use m1
type(zp)::vp
type(za)::va,va2,va3,va4
CLASS(base), ALLOCATABLE:: src
type(base)::base_v

    class(b),allocatable::k21v
    allocate(e::k21v)
   select type(p=>k21v)
      type is(e)
        p%n1=101
        allocate(p%n2,source='12')
    end select

base_v=base(11,k21v)

allocate(ext::src, STAT=err)
select type(src)
  type is(ext)
    src%k1=1
 src%k21=k21v
    allocate(e::src%k2)
    select type(p=>src%k2)
      type is(e)
        p%n1=101
        allocate(p%n2,source='12')
    end select
end select
if( err /= 0 ) print *, 10001

allocate(va2%alc,va3%alc,source=base_v)

allocate(vp%ptr, va%alc, va2%alc,va3%alc,va4%alc,SOURCE=src, STAT = err)
if( err == 0 ) print *, 10002
select type(src)
  type is(ext)
    select type(p=>src%k2)
      type is(e)
        p%n2='ab'
    end select
   select type(p=>src%k21)
      type is(e)
        p%n2='ab'
    end select
end select
k=0
select type(p=>va2%alc)
  type is(base)
    if (p%k1/=11) print *,100128
   select type(q=>p%k21)
      type is(e)
        if (q%n1/=101) print *,1761
        if (q%n2/='12') print *,17615
    k=1
    end select
end select
if (k/=1) print *,128
k=0
select type(p=>va3%alc)
  type is(base)
    k=1
    if (p%k1/=11) print *,102128
  select type(q=>p%k21)
      type is(e)
        if (q%n1/=101) print *,17613
        if (q%n2/='12') print *,176153
    end select
end select
if (k/=1) print *,128
if (allocated(va4%alc)) print *,10318

k=0
select type(p=>vp%ptr)
  type is(ext)
    if (p%k1/=1) print *,1001
    select type(q=>p  %k2)
      type is(e)
        if (q%n2/='12') print *,100200
    end select
 select type(q=>p%k21)
      type is(e)
        if (q%n1/=101) print *,27613
        if (q%n2/='12') print *,276153
    k=1
    end select
end select
if (k/=1) print *,101
k=0
select type(p=>va%alc)
  type is(ext)
    if (p%k1/=1) print *,2001
    select type(q=>p  %k2)
      type is(e)
        if (q%n2/='12') print *,100200
    end select
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
print *,'sngg213q : pass'
END 
