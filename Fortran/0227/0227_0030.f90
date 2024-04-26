module m
  implicit none
  integer :: n
!$omp threadprivate(n )
end
module mod
use m
  implicit none
  integer :: nn
!$omp threadprivate(nn )
  contains
    function   foo() result(r)
    real var(n:n+1,nn:nn+1)   
    real var2(n:n+1,nn:nn+1)   
    real var3(n:n+1,nn:nn+1)   
    real r   (n:n+1,nn:nn+1)   
    r=       foo2(var,var2,var3)
    if (any(r/=1.)) print *,301
    end function  
    function   foo2(var,var2,var3) result(r)
    real var(n:,nn:)   
    real var2(n:,nn:)   
    real var3(n:,nn:)   
    real r   (n:n+1,nn:nn+1)   
    integer::omp_get_thread_num
    if (any(lbound(var)/=n)) print *,3001
    if (any(ubound(var)/=n+1)) print *,3002
    if (any(lbound(var2)/=n)) print *,3001
    if (any(ubound(var2)/=n+1)) print *,3002
    if (any(lbound(var3)/=n)) print *,3001
    if (any(ubound(var3)/=n+1)) print *,3002
    if (any(ubound(r   )/=n+1)) print *,3002
    if (any(lbound(r   )/=n)) print *,3001
    if (n/=omp_get_thread_num()+1) print *,9001
    r=1.0
    if (any(r/=1.)) print *,3011
    end function
end
use mod
integer::omp_get_thread_num
!$omp parallel 
n= omp_get_thread_num()+1
nn=n
    if (any(foo()/=1.)) print *,3111
!$omp end parallel
print *,'pass'
end

