          MODULE MOD
          INTEGER, ALLOCATABLE, SAVE :: A(:)
    !$OMP THREADPRIVATE(A)
          END

          PROGRAM P
          use mod
          integer,external::OMP_GET_THREAD_NUM

          ALLOCATE (A(3))
          A = (/1,2,3/)

    !$OMP PARALLEL
    !$OMP  CRITICAL
            IF (ALLOCATED(A)) THEN
              if (OMP_GET_THREAD_NUM()/=0) PRINT *, 'A = ', A
            ELSE
              if (OMP_GET_THREAD_NUM()==0) PRINT *, 'A is not allocated'
            END IF
    !$OMP  END CRITICAL
    !$OMP END PARALLEL
          print *,'pass'
          END PROGRAM P
