ip=-1
!$omp parallel default(none)
!$omp do
    DO ip = 0, 1
!$omp paralleldo
    DO ip2 = 0, 1
    END DO
!$omp endparalleldo
    DO ip3 = 0, 1
    END DO
    END DO
!$omp enddo
!$om enddo
!$omp master
    DO ip3 = 0, 1
    END DO
!$omp endmaster
!$omp end parallel 
print *,ip
end
