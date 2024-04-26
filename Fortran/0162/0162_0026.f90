!$omp parallel default(none) private(ix,ixa,ixb,ixab)
!$omp do
    DO ipb = 0, 1
       DO ixb = 1,1  
       DO ixab = 1,1  
       END DO
       END DO
    END DO
!$omp enddo
!$omp do
    DO ip = 0, 1
    END DO
!$omp enddo
!$omp end parallel
print *,'pass'
end
