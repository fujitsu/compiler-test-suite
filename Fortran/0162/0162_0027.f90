!$omp parallel default(none)
!$omp do
    DO ipb = 0, 1
    END DO
!$omp enddo
!$omp do
    DO ip = 0, 1
    END DO
!$omp enddo
!$omp end parallel
print *,'pass'
end
