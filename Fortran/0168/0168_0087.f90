module m1

type x
  integer:: x1
   character(:),pointer:: p
end type
type y
  integer:: y1
  type(x),pointer::p
end type
contains
subroutine s1(p,k)
type(y),pointer::p
!$omp parallel firstprivate(p)
if (len(p%p%p)/=80) print *,302
if (p%p%p=='dfg') print *,301
select case(p%p%p)
  case ('abcef')
    k=1
  case ('12345678901234567890')
    k=2
  case ('12345678901','snghkp')
    k=3
  case default
    k=4
end select
!$omp end parallel
end subroutine
end

use m1
type(y),pointer::p
allocate(p)
allocate(p%p)
allocate(character(80)::p%p%p)
p%p%p='xyx'
call s1(p,k)
if (k/=4) print *,101,k
p%p%p='abcef'
call s1(p,k)
if (k/=1) print *,102,k
p%p%p='12345678901234567890'
call s1(p,k)
if (k/=2) print *,103,k
p%p%p='12345678901'
call s1(p,k)
if (k/=3) print *,104,k
p%p%p='snghkp'
call s1(p,k)
if (k/=3) print *,105,k
print *,'pass'
end
