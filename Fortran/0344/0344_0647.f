      PROGRAM MAIN
      REAL*4  RA1(20),RA2(20),RA3(20),RA4(20)
      LOGICAL*4 LD1(20),LD2(20),LD3(20)
      DATA  RA1,RA2,RA3,RA4/80*1./
      DATA  LD1,LD2,LD3/60*.FALSE./
*
      DO 10 I=1,20,2
        RA2(I)=FLOAT(I)
        RA3(I+1)=FLOAT(21-I)
        LD1(I)=.TRUE.
        LD3(I+1)=.TRUE.
  10  CONTINUE

      DO 20 I=1,20
        LD2(I)=LD1(I).OR.LD3(I)
        IF (LD2(I)) THEN
          LD1(I)=RA2(I).GT.RA3(I)
          IF (LD3(I)) THEN
            RA1(I)=RA2(I)+RA3(I)
          ELSE
            RA1(I)=RA2(I)+RA4(I)
            RA4(I)=RA3(I)*2.
          ENDIF
          LD2(I)=LD2(I).AND.LD3(I)
        ENDIF
  20  CONTINUE
      WRITE(6,*) 'LD1= ',LD1
      WRITE(6,*) 'LD2= ',LD2
      WRITE(6,*) 'RA1= ',RA1
      WRITE(6,*) 'RA4= ',RA4
      STOP
      END
