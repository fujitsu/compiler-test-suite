 module mmm
 type tt
 integer,pointer::p(:)
 end type
 integer,pointer::t(:)
 contains
 function f3() result(ttt)
 type(tt)::ttt
 allocate(t(3))
 t=(/1,2,3/)
 ttt%p=>t(::2)
 if (ttt%p(1).ne.1) print *,'err 1'
 if (ttt%p(2).ne.3) print *,'err 2'
 end function f3
 end
 subroutine s1
 use mmm
type xxx
 type(tt),allocatable::lll
end type
type xx
type(xxx),pointer :: vvv
end type 
type(xx) ,pointer :: www
type zz
type(xxx),pointer :: vvv
end type 
type(zz) ,pointer :: zzz
allocate(www,zzz)
allocate(www%vvv,zzz%vvv)
 allocate(www%vvv%lll,zzz%vvv%lll,source=f3())
 if (www%vvv%lll%p(2).ne.3) print *,'err 3'
 if (zzz%vvv%lll%p(2).ne.3) print *,'err 3'
 end
call s1
print *,'pass'
end
