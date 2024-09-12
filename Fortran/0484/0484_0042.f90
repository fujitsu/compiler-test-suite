        integer:: I=1, J=1
        !$OMP PARALLEL default(shared)
        !$OMP TASK
        DO I = 1, 100
        DO J = 1, 100
        END DO
        END DO
        !$OMP END TASK
        !$OMP TASK
        !$OMP critical
        DO I1 = 1, 100
        DO J2 = 1, 100
        END DO
        END DO
        !$OMP END critical
        !$OMP END TASK
        !$OMP END PARALLEL
        if( I/=1) print *,"i==",i
        if( J/=1) print *,"j==",i
        print *,'pass'
        END

