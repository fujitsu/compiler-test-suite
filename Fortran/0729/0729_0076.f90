PROGRAM COPYA
  REAL(KIND(0.d0)) :: A(57,57,57,4)
  INTEGER,PARAMETER :: NI=57
  REAL(KIND(0.d0)) FUNC
  INTEGER I,J,K
  DO L=1,4
     DO K=1,NI
        WRITE(1,*)"PASS BY REF",K
        DO J=1,NI
           DO I=1,NI
              D = FUNC(A(1,1,1,L))
           END DO
        END DO
     END DO
  END DO
  WRITE(1,*)"************ SWICTHING TO PASS BY VAL **************"
  DO L=1,4
     DO K=1,NI
        WRITE(1,*)"PASS BY VAL",K
        DO J=1,NI
           DO I=1,NI
              D = FUNC(A(:,:,:,L))
           END DO
        END DO
     END DO
  END DO
print *,'pass'
  STOP
END PROGRAM COPYA

FUNCTION FUNC(A)
  REAL(KIND(0.d0)) :: FUNC
  REAL(KIND(0.d0)) :: A(57,57,57)
  A(1,1,1)=-1.d00
  FUNC = A(1,1,1)
  RETURN
END FUNCTION FUNC
