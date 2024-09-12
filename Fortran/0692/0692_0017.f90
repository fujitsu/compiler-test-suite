COMMON /L/I
!$omp threadprivate(/L/)
DO I=1,3
END DO
print *,'pass'
END
