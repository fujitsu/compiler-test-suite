subroutine s1
integer:: ks=0,ka(2)=0
!$omp parallel
!$omp atomic 
ks=ks+1
!$omp end parallel
if (ks==0) print *,101,ks
!$omp parallel
!$omp atomic capture
k=ks
ks=max(ks,f(ka))
!$omp end atomic 
!$omp end parallel

!$omp parallel
!$omp atomic capture
k=ks
ks=ks+f(ka)
!$omp end atomic 
!$omp end parallel

!$omp parallel
!$omp atomic write
ks=f(ka)
!$omp end atomic 
!$omp end parallel
if (any(ka/=0)) print *,102,ka,k
contains
integer function f(ka)
integer :: ka(:)
f=sum(ka)
end function
end
call s1
print *,'pass'
end
