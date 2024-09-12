  type t
integer::i1
  end type t
  character::ccc(1,2)
  type(t)::ttt(1,2)
ccc="1"
ttt%i1=1
call s1([ccc])
call s1([character::[ccc]])
call s2([ttt])
call s2([t::[ttt]])
  print *,'pass'
contains
  subroutine s1(a)
character::a(:)
if(a(2)/="1") print *,'err'
  end subroutine s1
  subroutine s2(a)
type(t)::a(:)
if(a(2)%i1/=1) print *,'err'
end subroutine s2
  end
