module mmm
type aa
integer,pointer::p(:)
end type
integer,pointer::t(:)
type(aa),allocatable :: w
contains
subroutine f3
allocate(w)
allocate(t(3))
t=(/1,2,3/)
w%p=>t(::2)
end subroutine
end
subroutine s1()
use mmm
type(aa),allocatable :: www,aaa,bbb(:)
type vv
 type(aa),allocatable :: www,aaa,bbb(:)
end type
type(vv) :: str
allocate( www,aaa,bbb(1),str%www,str%aaa,str%bbb(1), source=w)
if (www%p(2)/=3) print *,102
if (aaa%p(2)/=3) print *,103
if (bbb(1)%p(2)/=3) print *,104
if (str%www%p(2)/=3) print *,105
if (str%aaa%p(2)/=3) print *,106
if (str%bbb(1)%p(2)/=3) print *,107
end subroutine

subroutine s2()
use mmm
type(aa),allocatable :: www,aaa,bbb(:)
type vv
 type(aa),allocatable :: www,aaa,bbb(:)
end type
type(vv) :: str
allocate( www, source=w)
allocate( bbb(1), source=w)
allocate( str%www, source=w)
allocate( str%aaa, source=w)
allocate( aaa,str%bbb(1), source=w)
if (www%p(2)/=3) print *,102
if (aaa%p(2)/=3) print *,103
if (bbb(1)%p(2)/=3) print *,104
if (str%www%p(2)/=3) print *,105
if (str%aaa%p(2)/=3) print *,106
if (str%bbb(1)%p(2)/=3) print *,107
end subroutine


use mmm
call f3
call s1
call s2
print *,'pass'
end


