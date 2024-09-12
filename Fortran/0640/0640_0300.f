      PROGRAM MAIN
      DATA N/10/
      LOGICAL*4  L20(10)/.FALSE.,.TRUE.,
     +                   .FALSE.,.TRUE.,
     +                   .FALSE.,.TRUE.,
     +                   .FALSE.,.TRUE.,
     +                   .FALSE.,.TRUE./
      LOGICAL*4  L21(10)/.FALSE.,.FALSE.,
     +                   .FALSE.,.TRUE.,
     +                   .FALSE.,.TRUE.,
     +                   .FALSE.,.FALSE.,
     +                   .FALSE.,.TRUE./
      INTEGER*4  I20(10)/1,2,3,4,5,6,7,8,9,10/
      REAL*4     R20(10)/1,1,2,2,3,3,4,4,5,5/
      REAL*8     D20(10)/5*1.0,5*2.0/
      INTEGER*4  I21(10)/1,0,1,0,1,0,1,0,1,0/
      INTEGER*4  IS/0/,IS1/0/,L/6/
      INTEGER*4  IV2/0.1/,IV3/0/,IV4/0/
      REAL*4     RV1/0./,X/6.0/,Y/0.1/
      REAL*8     DV1/0.0/,DV2/1.0/

      WRITE(6,*) '----- LOOP 1 -----'
      DO 20 I=1,N
        IF ( L20(I) ) THEN
          IF ( L21(I) ) THEN
            IS = IS + I20(I)
          ENDIF
        ELSE
          IF ( L21(L) ) THEN
            IS1 = IS1 + I20(I)
          ENDIF
        ENDIF
        IF ( X.GT.5.0 ) THEN
          IF ( L20(I) ) THEN
            RV1 = RV1 + R20(I)
          ENDIF
        ELSE
          IF ( Y .LE. R20(L) ) THEN
            DV1 = DV1 + D20(I)
          ENDIF
        ENDIF
        IF ( L21(I) ) THEN
        ELSE
          IF ( D20(L) .GT. DV2 ) THEN
            IF ( L20(I) ) THEN
              IV1 = MAX(MIN(I20(I),I),MAX(IV2,I21(I)))
              IV3 = IV3 +IV1
            ENDIF
            IF ( X.EQ.Y ) THEN
              IV4 = IV4 + INT(X)
            ENDIF
          ENDIF
        ENDIF
   20 CONTINUE
      WRITE(6,*) IS
      WRITE(6,*) IS1
      WRITE(6,*) RV1
      WRITE(6,*) DV1
      WRITE(6,*) IV3
      WRITE(6,*) IV4
      STOP
      END
