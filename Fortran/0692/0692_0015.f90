print *,'pass'
end
subroutine s3
common /x2/ k
save /x2/
!$omp threadprivate(/x2/)
end
