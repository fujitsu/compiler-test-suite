      LOGICAL*4  L(10),EL1(10),EL2(10),L3(10),L1(10),L2(10)
      DATA  L,EL1,L1,L2,L3
     1  /5*.TRUE.,5*.FALSE.,10*.TRUE.,10*.FALSE.,10*.TRUE.,10*.FALSE./
      EQUIVALENCE (EL1(1),EL2(1))

      DO 10 I=1,10
        IF(L(I)) THEN
          L(I) = .TRUE.
         ENDIF
   10 CONTINUE
      PRINT  *,L

      DO 20 I=1,10
        IF(L1(10) .AND. L2(I)) THEN
          L1(I) = .TRUE.
        ENDIF
        IF(L3(I) .OR. L2(I)) THEN
          L3(I) = .TRUE.
        ENDIF
        IF(L3(1) .AND. L2(I)) THEN
          L2(I) = .TRUE.
        ENDIF
   20 CONTINUE
      PRINT  *,L1,L3

      DO 30 I=1,10
        IF(EL2(I) .AND. L3(I)) THEN
           EL1(I) = .TRUE.
        ENDIF
   30 CONTINUE
      PRINT *,EL1
      STOP
      END
