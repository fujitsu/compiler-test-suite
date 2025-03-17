module mdef
type tdef
  integer::i(5)=1
end type
contains
recursive function fact(x,tt) result(r)
  integer,target::r,x
  type(tdef),target::tt
  type(tdef),pointer::ttp
  integer,pointer::ip(:)
    ttp => tt
    ip => tt%i
    ip => tt%i(:)
  if ( x <= 1 ) then
    r= ttp%i(1);
    r= ip(1);
    return
  else
    r = x * fact(x-1,tt)
  endif
end function
end module

use mdef
type(tdef)::tt
integer::x
x=10
x=fact(x,tt)
if ( x == 3628800 ) then
  print *,'pass'
else
  print *,x
endif
end
