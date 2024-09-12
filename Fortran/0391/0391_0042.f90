subroutine s1(n)
common /cmn/k1 ,k2
!$omp threadprivate (/cmn/)
if (n==1) then
k1=1
k2=2
endif
if (k1/=1) print *,100,k1,n
if (k2/=2) print *,101,k2,n
end

!$omp parallel
do k=1,3
call s1(k)
end do
!$omp end parallel
print *,'pass'
end
