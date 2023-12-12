 module mmm
 type tt
 integer,pointer::p(:)
 integer,pointer::t(:)
 end type
type vvv(i)
 integer,kind::i=2
 type(tt)::lll(i)
 type(tt)::ttt(i)
end type
 contains
 function f3() result(xxx)
type (vvv(2))  ::xxx
 allocate(xxx%ttt(1)%t(3))
 xxx%ttt(1)%t=(/1,2,3/)
 xxx%ttt(1)%p=>xxx%ttt(1)%t(::2)
 if (xxx%ttt(1)%p(1).ne.1) print *,'err 1'
 if (xxx%ttt(1)%p(2).ne.3) print *,'err 2'
 end function f3
 end
 subroutine s1
 use mmm
type (vvv(2)) ,save ::zzz
 zzz=f3()
 if (zzz%ttt(1)%p(2).ne.3) print *,'err 3'
 end
call s1
print *,'pass'
end
