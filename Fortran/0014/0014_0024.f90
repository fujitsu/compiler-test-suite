 module mmm
 type tt
 integer,pointer::p(:)
 end type
 type tta
  type(tt)::ttta
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
block
 type(tta),save::lll
block
 lll=tta(f3())
 if (lll%ttta%p(2).ne.3) print *,'err 3'
end block
end block
 end
call s1
print *,'pass'
end
