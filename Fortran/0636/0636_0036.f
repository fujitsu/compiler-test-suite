      PROGRAM MAIN
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      COMMON /BLK1/ IL10(50,50),IL20(50,50),IL30(50,50),IX,IY
      COMMON /BLK2/ DA10(5,5,5,5,5,5,5),DA20(5,5,5,5,5,5,5)
      COMMON /BLK3/ HL10(50,50),HL20(50,50)
      INTEGER*4  IZ(2)
      EQUIVALENCE (IZ(1),IX)
      DATA  NN/50/
      DO 10 I1=1,5
       DO 10 I2=1,5
        DO 10 I3=1,5
         DO 10 I4=1,5
          DO 10 I5=1,5
           DO 10 I6=1,5
            DO 10 I7=1,5
             DA10(I1,I2,I3,I4,I5,I6,I7)=1.D0
             DA20(I1,I2,I3,I4,I5,I6,I7)=DFLOAT(I1)
  10  CONTINUE
      CALL  SUB(NN)
      WRITE(6,*) ' IX=',IX
      WRITE(6,*) ' IY=',IY
      WRITE(6,1) ' IL10=',((IL10(I,J),I=1,20),J=1,20)
      WRITE(6,1) ' IL20=',((IL20(I,J),I=1,20),J=1,20)
      WRITE(6,1) ' DA10=',
     1    (((((((DA10(I1,I2,I3,I4,I5,I6,I7),I1=1,3),I2=1,3),I3=1,3),
     2           I4=1,3),I5=1,3),I6=1,3),I7=1,3)
      WRITE(6,1) ' HL10=',((HL20(I,J),I=1,20),J=1,20)
      WRITE(6,1) ' HL20=',((HL20(I,J),I=1,20),J=1,20)
 1    FORMAT(A6,5(1X,G10.3))
      STOP
      END
      BLOCK DATA INIT
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      COMMON /BLK1/ IL10(50,50),IL20(50,50),IL30(50,50),IX,IY
      COMMON /BLK2/ DA10(5,5,5,5,5,5,5),DA20(5,5,5,5,5,5,5)
      COMMON /BLK3/ HL10(50,50),HL20(50,50)
      DATA IL10,IL20,IL30/2500*1,2500*2,2500*3/
      DATA HL10,HL20/2500*2,2500*5/
      DATA IX,IY/10,20/
      END
      SUBROUTINE SUB(NN)
      IMPLICIT  REAL*8(A-B,D),COMPLEX*16(C)
      COMMON /BLK1/ IL10(50,50),IL20(50,50),IL30(50,50),IX,IY
      COMMON /BLK2/ DA10(5,5,5,5,5,5,5),DA20(5,5,5,5,5,5,5)
      COMMON /BLK3/ HL10(50,50),HL20(50,50)
      INTEGER*4  IZ(2)
      EQUIVALENCE (IZ(1),IX)
      NX=NN-5
      DO 10 I=2,NX
        HL20(I,2)=HL10(I,2)+IL10(I,30)
        DO 20 J=2,NX
          IL10(I,J)=IL10(I,J)+IL20(I,J)
          IL20(J,I)=IL30(J,I)*I
  20    CONTINUE
        HL10(NX+1,I)=HL20(1,I)+IL20(1,I-1)
  10  CONTINUE
      DO 40 I1=2,4
       DO 30 I2=1,4
        DO 30 I3=1,5
         DO 30 I4=1,5
          DO 30 I5=1,5
           DO 30 I6=1,5
            DO 30 I7=1,5
             DA10(I7,I3,I4,I5,I6,I2,I1)=DA10(I7,I3,I4,I5,I6,I2,I1+1)
     *         +DA20(I7,I3,I4,I5,I6,I2+1,I1-1)
  30   CONTINUE
       DA20(I1,I1,I1,I1,I1,I1,I1)=DFLOAT(I1)
  40  CONTINUE
      DO 50 I=2,NX
       DO 50 J=2,NX
         IX=IX+IL10(I,J)-IL20(I,J)
         IF (IY.LT.IL30(I,J)) THEN
           IY=IL30(I,J)
         ENDIF
  50  CONTINUE
      RETURN
      END
