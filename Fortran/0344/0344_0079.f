      LOGICAL*4 LB(8),LM(8)
      DATA      LB/4*.TRUE.,4*.FALSE./
      DATA      LM/.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .TRUE.,.FALSE.,.TRUE.,.FALSE./
      LOGICAL*4 LA11(8)
      DATA      LA11/8*.FALSE./
      LOGICAL*4 LS/.TRUE./
C
      DO 11 I=1,8
        IF ( LM(I) ) THEN
          LA11(I) = LB(I) .AND. LS
        ENDIF
11    CONTINUE
      WRITE(6,*) LA11
C
      STOP
      END
