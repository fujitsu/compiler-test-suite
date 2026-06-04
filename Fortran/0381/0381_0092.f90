subroutine s1
interface 
 subroutine n(i)
 end subroutine
 subroutine k(i)
 end subroutine
end interface 
procedure(n),pointer::p
p=> n
call p(m)
if (m/=1)print *,101
!$omp parallel private(p)
!$omp end parallel
call p(m)
if (m/=1)print *,102
end
subroutine s2
interface 
 subroutine n(i)
 end subroutine
 subroutine k(i)
 end subroutine
end interface 
type st
integer x1
procedure(n),nopass,pointer::e
end type
type(st)::p
p%e=> n
call p%e(m)
if (m/=1)print *,101
!$omp parallel private(p)
!$omp end parallel
call p%e(m)
if (m/=1)print *,102
end
call s1
call s2
print *,'pass'
end
 subroutine n(i)
 i=1
 end subroutine
 subroutine k(i)
 i=2
 end subroutine
