      PROGRAM MAIN
      DATA N/10/

      LOGICAL*4  L10(10),L11(10),L12(10),L13(10),L14(10),L15(10),
     1           L16(10),L17(10),LV10,LV11,LV12,LV13,LV14
      DATA  LV10/.TRUE./,LV11/.TRUE./,LV12/.TRUE./
      DATA  L10/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1          .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA  L12/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1          .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA  L13/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,
     1          .FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA  LV13/.FALSE./,LV14/.FALSE./
      DATA  L11/.TRUE.,2*.FALSE.,2*.TRUE.,2*.FALSE.,
     1          .TRUE.,.FALSE.,.TRUE./
      DATA  L14,L15,L16,L17/40*.FALSE./

      LOGICAL*4 L20(10),L21(10),L22(10),L23(10)
      LOGICAL*4 LV20,LV21,LV22,LV23,LV24
      INTEGER*4 I20(10)
      DATA  LV20/.TRUE./,LV21/.TRUE./,LV22/.TRUE./,LV23/.TRUE./,
     1      LV24/.TRUE./
      DATA  L20/5*.FALSE.,5*.TRUE./
      DATA  L21/.TRUE.,.FALSE.,.TRUE.,3*.FALSE.,
     1          .TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA  L22/.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,5*.FALSE./
      DATA  L23/.TRUE.,.FALSE.,3*.TRUE.,5*.TRUE./
      DATA  I20/10*0/,J/5/

      REAL*4  RV30,R30(10)
      REAL*8  RD30(10),RDV30
      LOGICAL*4 L30(10),LV30
      INTEGER*4 I30(10),I31(10),I32(10)
      DATA  RV30/3.3/,R30/0,3.4,5.,0,3.2,3.4,6,7,0,3.3/
      DATA  I30/10*0/,I31/10*0/,I32/10*0/
      DATA  RD30/1,2,3,4,5,6,7,8,9,10/,RDV30/5/
      DATA  L30/.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE.,
     1          .TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE./
      DATA  LV30/.TRUE./
      WRITE(6,*) '----- LOOP 1 -----'
      DO 10 I=1,N
        IF ( LV10 ) THEN
          IF ( LV11.AND.LV12 ) THEN
            IF ( L10(I) .OR. LV13 ) THEN
              IF ( LV14 .NEQV. L11(I) ) THEN
                IF ( L12(I) .EQV. L13(I) ) THEN
                  L14(I) = .TRUE.
                ENDIF
              ELSE
                L15(I) = .TRUE.
              ENDIF
            ELSE
              L16(I) = LV14
            ENDIF
          ELSE
            L17(I) = LV10 .OR.L15(I).OR.L16(I)
          ENDIF
        ENDIF
   10 CONTINUE
      WRITE(6,*) L14
      WRITE(6,*) L15
      WRITE(6,*) L16
      WRITE(6,*) L17
      WRITE(6,*) '----- LOOP 2 -----'
      DO 20 I=1,N
        IF (LV20) THEN
          IF ( LV21.AND.LV22 ) THEN
            IF ( L20(J).OR.LV23 ) THEN
              IF ( LV24 .NEQV. L21(J) ) THEN
                IF ( L22(J) .EQV. L23(J) ) THEN
                  I20(I) = I
                ENDIF
              ENDIF
            ENDIF
          ENDIF
        ENDIF
   20 CONTINUE
      WRITE(6,*) I20
      WRITE(6,*) '----- LOOP 3 -----'
      DO 30 I=1,N
        IF ( RV30 .GT. R30(I) ) I30(I) = I
        LV30 = RD30(I) .LE. RDV30
        IF ( L30(I) ) THEN
          IF (LV30) THEN
            I31(I) = I
          ELSE
            I31(I) = -I
          ENDIF
        ELSE
            I32(I) = I
        ENDIF
        IF (LV30 .AND. L30(I) ) THEN
          L30(I) = .TRUE.
        ENDIF
   30 CONTINUE
      WRITE(6,*) I31
      WRITE(6,*) I32
      WRITE(6,*) L30
      STOP
      END
