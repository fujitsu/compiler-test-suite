      INTEGER    A(10),B(10),X,Y,S
      LOGICAL    L(10),LS
      DATA       L/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1             .FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA       LS/.TRUE./,S/2/
      DATA       A,B/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      DO 10 I=1,10
        Y = S
        IF(L(I)) THEN
          Y = 1
        ENDIF
        B(I) = A(I) * Y
   10 CONTINUE
      PRINT  *,B
      STOP
      END
