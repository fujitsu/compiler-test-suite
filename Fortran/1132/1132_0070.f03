program main
  TYPE STR
     REAL*8  A(20,20),B(20,20),C(20,20)
  END type STR
  TYPE(STR) STR_DATA
  LOGICAL*4  L1(20),L2(20,20)
  DATA   L1,L2/20*.FALSE.,200*.FALSE.,100*.TRUE.,100*.FALSE./
  DATA   N/15/

  DO I=1,20
     DO J=1,20
        STR_DATA%A(J,I) = I+J
        STR_DATA%B(J,I) = I+J+1
        STR_DATA%C(J,I) = I+J+2
     END DO
  END DO

  DO I=1,N
     L1(I) = .NOT.L2(I,1)
     DO J=2,N
        DO K=2,N
           STR_DATA%A(K,J) = STR_DATA%A(K,J)+STR_DATA%C(K-1,J)*2.
           STR_DATA%B(K,J) = STR_DATA%C(K+1,J)*STR_DATA%A(K+1,J)
           IF ( L2(K,J) ) THEN
              STR_DATA%C(K,J) = STR_DATA%A(K,J+1)+1.0
           ENDIF
        END DO
     END DO
  END DO
  WRITE(6,*) '======== FIRST   ====='
  WRITE(6,*) STR_DATA%A
  WRITE(6,*) STR_DATA%B
  WRITE(6,*) STR_DATA%C

  DO I=1,10
     L1(I) = .NOT.L2(I,1)
     DO J=2,N
        DO K=2,N
           STR_DATA%C(K,J) = STR_DATA%A(K,J)+STR_DATA%B(K-1,J)/FLOAT(I)
           STR_DATA%B(K,J) = STR_DATA%C(K+1,J)-STR_DATA%A(K+1,J)
           IF ( L2(K,J).OR.L1(K) ) THEN
              L2(K,J) = .TRUE.
           ELSE
              L1(K) = .TRUE.
           ENDIF
        END DO
     END DO
  END DO

  WRITE(6,*) '======== SECOND  ====='
  WRITE(6,*) STR_DATA%A
  WRITE(6,*) STR_DATA%B
  WRITE(6,*) STR_DATA%C
  STOP
END program main
