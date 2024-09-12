module mmm
type t1
integer,pointer::p(:)
end type
type,extends(t1)::t2
 integer,pointer::pp(:)
end type
integer,pointer::t(:)
class(t1),allocatable::ttt
contains
subroutine s1(tttx)
class(t1)::tttx
type z
class(t1),allocatable::lll
end type
type(z):: zv
allocate(zv%lll,source=tttx)
if (tttx%p(2)/=3) print *,101
if (zv%lll%p(2)/=3) print *,'err-1'
k=0
select type(tttx)
type is(t2)
if (tttx%pp(2)/=3) print *,301
 k=1
end select
if (k/=1) print *,201
k=0
select type(w=>zv%lll)
type is(t2)
if (w%pp(2)/=3) print *,'err-2'
 k=1
end select
if (k/=1) print *,301
end subroutine
subroutine s2(tttx)
class(t1)::tttx
type z
class(t1),allocatable::lll
end type
type(z):: zv
allocate(zv%lll,source=tttx)
if (tttx%p(2)/=3) print *,1101
call xxx(zv%lll%p,2)
end subroutine
subroutine s3(tttx)
class(t1)::tttx
type z
class(t1),allocatable::lll
end type
type(z):: zv
allocate(zv%lll,source=tttx)
if (tttx%p(2)/=3) print *,3101
k=0
select type(tttx)
type is(t2)
call xxx(tttx%pp,3)
 k=1
end select
if (k/=1) print *,3201
end subroutine
subroutine s4(tttx)
class(t1)::tttx
type z
class(t1),allocatable::lll
end type
type(z):: zv
allocate(zv%lll,source=tttx)
if (tttx%p(2)/=3) print *,4101
k=0
select type(w=>zv%lll)
type is(t2)
call xxx(w%pp,4)
 k=1
end select
if (k/=1) print *,4301
end subroutine
end
subroutine xxx(n,k)
integer n(2)
if (n(1)/=1) print *,501,k
if (n(2)/=3) print *,502,k
end
subroutine f3
use mmm
allocate( t2:: ttt)
allocate(t(3))
t=(/1,2,3/)
ttt%p=>t(::2)
k=0
select type(ttt)
type is(t2)
 ttt%pp=>t(::2)
 k=1
end select
if (k/=1) print *,101
end subroutine
use mmm
call f3()
call s1(ttt)
call s2(ttt)
call s3(ttt)
call s4(ttt)
print *,'pass'
end
