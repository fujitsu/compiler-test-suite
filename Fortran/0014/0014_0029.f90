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
 type(tt),save::lll
 lll=f3()
 if (lll%p(2).ne.3) print *,'err 3'
 end
 subroutine s2
 use mmm
 type(tt),save::lll(1)
 lll=(/f3()/)
 if (lll(1)%p(2).ne.3) print *,'err 3'
 end
 subroutine s3
 use mmm
type yy
 type(tt)::lll
end type
type( yy),save :: str
 str=yy(f3())
 if (str%lll%p(2).ne.3) print *,'err 3'
 end




call s1
call s2
call s3
print *,'pass'
end
