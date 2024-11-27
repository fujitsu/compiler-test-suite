!$omp parallel default(none) 
!$omp do private(ip,ix)
    DO ip = 0, 1
       DO ix = 1,1  
       END DO
    END DO
!$omp end do
    DO ip1 = 0, 1
    END DO
!$omp do firstprivate(ix2)
    DO ip2 = 0, 1
       DO ix2 = 1,1
       END DO
    END DO
!$omp end do
!$omp end parallel 
print *,'pass'
end
