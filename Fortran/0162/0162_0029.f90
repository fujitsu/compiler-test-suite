ip=-1
!$omp parallel do default(none) private(ip)
    DO ip = 0, 1
    END DO
!$omp end parallel do
!$omp parallel default(none)
!$omp do
    DO ip = 0, 1
    END DO
!$omp enddo
!$omp do
    DO ix = 1,1
    END DO
!$omp enddo
!$omp end parallel 
if (ip.ne.-1) print *,'err'
print *,'pass'
end
