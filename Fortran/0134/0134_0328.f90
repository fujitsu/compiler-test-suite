subroutine s1
interface 
 function   n(i)
 end function   
 function   k(i)
 end function   
end interface 
procedure(n),pointer::p
p=> n
if (p(1)+p(1)/=2)print *,101
!$omp parallel private(p)
!$omp end parallel
if (p(1)+p(1)/=2)print *,103
end
subroutine s2
interface 
 function   n(i)
 end function   
 function   k(i)
 end function   
end interface 
type st
integer x1
procedure(n),nopass,pointer::e
end type
type(st)::p
p%e=> n
if (p%e(1)+p%e(1)/=2)print *,201
!$omp parallel private(p)
!$omp end parallel
if (p%e(1)+p%e(1)/=2)print *,203
end
call s1
call s2
print *,'pass'
end
 function   n(i)
 n=i
 end function   
 function   k(i)
 k=i+2
 end function   


