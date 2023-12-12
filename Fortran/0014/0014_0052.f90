 module mmm
 type tt
 integer,pointer::p(:)
 end type
 integer,pointer::t(:)
 contains
 function f3() result(ttt)
 type(tt),pointer::ttt
 allocate(t(3))
 t=(/1,2,3/)
 allocate(ttt)
 ttt%p=>t(::2)
 if (ttt%p(1).ne.1) print *,'err 1'
 if (ttt%p(2).ne.3) print *,'err 2'
 end function f3
 end
 subroutine s1
 use mmm
 type(tt),save,pointer::lll
 lll=>f3()
 if (lll%p(2).ne.3) print *,'err 3'
 end
call s1
print *,'pass'
end
