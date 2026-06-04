          MODULE MOD
          INTEGER, ALLOCATABLE, SAVE :: A(:)
          INTEGER, POINTER, SAVE :: PTR
          INTEGER, SAVE :: I
          INTEGER, TARGET :: TARG
          LOGICAL :: FIRSTIN = .TRUE.
    !$OMP THREADPRIVATE(A, B, I, PTR)
          END

          PROGRAM P
          use mod
          integer,external :: OMP_GET_THREAD_NUM

          ALLOCATE (A(3))
          A = (/1,2,3/)
          PTR => TARG
          I =5

    !$OMP PARALLEL COPYIN(PTR,I)
    !$OMP  CRITICAL
            IF (FIRSTIN) THEN
              TARG = 4
              I =I+10
              IF (ALLOCATED(A)) A = A + 10
            END IF
            IF (ALLOCATED(A)) THEN
                if (OMP_GET_THREAD_NUM()/=0) then
              PRINT *, 'A = ', A
                endif
            ELSE
                if (OMP_GET_THREAD_NUM()==0) then
              PRINT *, 'A is not allocated'
                endif
            END IF
            if (ptr/=4) then
            PRINT *, 'PRT = ', PTR
            endif
            if (FIRSTIN) then
              if (i/=15) PRINT *, 'I = ', I
            else
              if (i/=5) PRINT *,'I= ',I
            endif
            FIRSTIN = .FALSE.
    !$OMP  END CRITICAL
    !$OMP END PARALLEL
          print *,'pass'
          END PROGRAM P
