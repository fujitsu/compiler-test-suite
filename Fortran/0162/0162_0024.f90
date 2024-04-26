ip=100
ip2=100
!$omp parallel do default(none) shared(ip,ip2) 
    DO ip = 0, 1
ip2=10000
    DO ip2 = 0, 1
    END DO
    END DO
!$omp end parallel do
if (ip.ne.100) print *,'ng1 '
if (1.eq.2) then
if (ip2.ne.2) print *,'ng1 '
end if
ip=100
ip2=100
!$omp parallel default(none) shared(ip,ip2) 
!$omp do
    DO ip = 0, 1
ip2=10000
    DO ip2 = 0, 1
    END DO
    END DO
!$omp end do
!$omp end parallel 
if (ip.ne.100) print *,'ng1 '
if (1.eq.2) then
if (ip2.ne.2) print *,'ng1 '
endif
print *,'pass'
end
