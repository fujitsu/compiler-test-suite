 module mmm
 type tt
 integer,pointer::p(:)
 integer,pointer::t(:)
 end type
 contains
 function f3() result(ttt)
 type(tt)::ttt
 allocate(ttt%t(3))
 ttt%t=(/1,2,3/)
 ttt%p=>ttt%t(::2)
 if (ttt%p(1).ne.1) print *,'err 1'
 if (ttt%p(2).ne.3) print *,'err 2'
 end function f3
 end
 subroutine s1
 use mmm
 type(tt),save::lll
block
 lll=f3()
 if (lll%p(2).ne.3) print *,'err 3'
end block
 end
call s1
print *,'pass'
end
