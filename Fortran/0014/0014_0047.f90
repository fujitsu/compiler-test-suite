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
 function f4() result(ttt)
 type(tt)::ttt
 t=(/10,20,30/)
 ttt%p=>t(::2)
end function
 end
 subroutine s1
 use mmm
 type(tt),save::lll
 lll=f3()
block
 type(tt),save::llla
 llla=lll
 if (llla%p(2).ne.3) print *,'err 5'
 lll=llla
 if (lll%p(2).ne.3) print *,'err 6'
 lll=f4()
 if (lll%p(2).ne.30) print *,'err 3'
end block
 if (lll%p(2).ne.30) print *,'err 4'
 end
call s1
print *,'pass'
end
