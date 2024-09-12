module m1
interface
  function if()
  end function
end interface
contains
subroutine s1(p1,d1,p2,d2,k1,k2)
implicit character(k1+5)(p,d)
procedure(if)::d1,d2
procedure(if),pointer::p1,p2
optional p2,d2
if (p1()/=1)print *,101
if (d1()/=1)print *,102
if (present(p2)) then
  if (associated(p2)) then
    if (k1/=2)print *,103
    if (p2()/=1)print *,105
  else 
    if (k1/=1)print *,106
  endif
else 
  if (k1/=0)print *,104
endif
if (present(d2)) then
    if (k2/=1)print *,201
    if (d2()/=1)print *,202
else 
  if (k2/=0)print *,203
endif
end subroutine
end
subroutine xx
use m1
procedure(if)::d1,d2
procedure(if),pointer::p1,p2
p1=>if
p2=>if
call s1(p1,d1,p2,d2,k1=2,k2=1)
nullify(p1,p2)

p1=>if
call s1(p1,d1,p2,d2,k1=1,k2=1)
nullify(p1,p2)

p1=>if
call s1(p1,d1,   d2=d2,k1=0,k2=1)
nullify(p1,p2)

p1=>if
p2=>if
call s1(p1,d1,p2,   k1=2,k2=0)
nullify(p1,p2)

p1=>if
call s1(p1,d1,p2,   k1=1,k2=0)
nullify(p1,p2)

p1=>if
call s1(p1,d1,      k1=0,k2=0)
nullify(p1,p2)
end
call xx
print *,'pass'
end
  function if()
  entry d1()
  entry d2()
  integer d1,d2
  if=1
  end function
