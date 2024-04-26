subroutine s1
ip=100
ip2=-100
!$omp parallel default(none)  shared(ip)
    DO ip = 0, 1
    END DO
!$omp end parallel
if (ip==100) print *,1001,ip
if (ip2/=-100) print *,1002,ip2
ip=100
ip2=-100
!$omp parallel default(none) shared(ip)
!$omp do
    DO ip = 2,3
    END DO
!$omp end do
!$omp end parallel 
if (ip/=100) print *,2001,ip
if (ip2/=-100) print *,2002,ip2
ip=100
ip2=-100
!$omp parallel do shared(ip) default(none)
    DO ip = 2,3
    END DO
!$omp end parallel do
if (ip/=100) print *,3001,ip
if (ip2/=-100) print *,3002,ip2
end
call s1
print *,'pass'
end
