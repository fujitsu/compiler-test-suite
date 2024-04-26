module m1
   character(1):: p(2)
   character(:),pointer:: x
contains
subroutine s1(p,k,x)
   character(1):: p(2)
   character(:),pointer:: x
if (len(p)/=1) print *,302
if (p(2)=='dfg') print *,301
select case(p(len(x)))
  case ('a')
    k=1
  case ('1')
    k=2
  case ('2')
    k=3
  case default
    k=4
end select
end subroutine
end

use m1
allocate(character(1)::x)
p='xyx'
call s1(p,k,x)
if (k/=4) print *,101,k
p='a'
call s1(p,k,x)
if (k/=1) print *,102,k
p='12345678901234567890'
call s1(p,k,x)
if (k/=2) print *,103,k
p='12345678901'
call s1(p,k,x)
if (k/=2) print *,104,k
p='2nghkp'
call s1(p,k,x)
if (k/=3) print *,105,k
print *,'pass'
end
