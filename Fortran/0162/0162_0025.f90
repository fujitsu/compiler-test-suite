!$omp parallel do default(none) private(ix,ixa)
    DO ip = 0, 1
       DO ix = 1,1  
       DO ixa = 1,1  
       END DO
       END DO
    END DO
!$omp end parallel do
print *,'pass'
end
