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
        LD1(I)=LD2(I).OR.LD3(I)
        IF (LD1(I)  .OR. RA1(I).GT.RA2(I)) THEN
          RA1(I)=RA1(I)+RA2(I)
          RX=RA4(I)+RA3(I)
          IF (LD2(I)) THEN
            RX=RX+RA2(I)
            RY=RA3(I)+RA2(I)
          ELSE
            RX=RX-RA3(I)
            RY=RA2(I)*RA4(I)
          ENDIF
        ELSE
          RX=RA2(I)+RA3(I)
          RY=RA1(I)**2.-RA3(I)
          LD2(I)=RX.GT.RY
        ENDIF
        LD3(I)=LD1(I).AND.LD2(I)
        RA2(I)=RX+RY
  20  CONTINUE
      WRITE(6,*) 'LD1= ',LD1
      WRITE(6,*) 'LD3= ',LD3
      WRITE(6,*) 'RA1= ',RA1
      WRITE(6,*) 'RA2= ',RA2
      STOP
      END
