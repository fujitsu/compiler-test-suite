module m1
   character(:),pointer:: p
contains
subroutine s1(p,k)
   character(:),pointer:: p
if (len(p)/=80) print *,302
if (p=='dfg') print *,301
select case(p)
  case ('abcef')
    k=1
  case ('12345678901234567890')
    k=2
  case ('12345678901','abcdef')
    k=3
  case default
    k=4
end select
end subroutine
end

use m1
allocate(character(80)::p)
p='xyx'
call s1(p,k)
if (k/=4) print *,101,k
p='abcef'
call s1(p,k)
if (k/=1) print *,102,k
p='12345678901234567890'
call s1(p,k)
if (k/=2) print *,103,k
p='12345678901'
call s1(p,k)
if (k/=3) print *,104,k
p='abcdef'
call s1(p,k)
if (k/=3) print *,105,k
print *,'pass'
end
