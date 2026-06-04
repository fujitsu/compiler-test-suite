module m1
 type x
   character(80):: p
   integer:: x1
 end type
contains
subroutine s1(v,k)
type (x),pointer:: v
if (len(v%p)/=80) print *,302
if (v%p=='dfg') print *,301
select case(v%p)
  case ('abcef')
    k=1
  case ('12345678901234567890')
    k=2
  case ('12345678901','snghkp')
    k=3
  case default
    k=4
end select
end subroutine
end

use m1
type(x),pointer:: v
allocate(v)
v%p='xyx'
call s1(v,k)
if (k/=4) print *,101,k
v%p='abcef'
call s1(v,k)
if (k/=1) print *,102,k
v%p='12345678901234567890'
call s1(v,k)
if (k/=2) print *,103,k
v%p='12345678901'
call s1(v,k)
if (k/=3) print *,104,k
v%p='snghkp'
call s1(v,k)
if (k/=3) print *,105,k
print *,'pass'
end
