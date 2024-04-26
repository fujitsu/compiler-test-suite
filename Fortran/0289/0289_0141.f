      PROGRAM MAIN
      INTEGER*4 FUSU1(10),FUSU2(10),FUSU3(10),SUM1,SUM2,SUM3,SUM4,SUM5
      INTEGER*4 WFUSU1(10),WFUSU2(10),WFUSU3(10)
      INTEGER*4 WSUM1,WSUM2,WSUM3,WSUM4,WSUM5
*
      POINTER (PFUSU1,FUSU1),(PFUSU2,FUSU2),(PFUSU3,FUSU3)
      POINTER (PSUM1,SUM1),(PSUM2,SUM2),(PSUM3,SUM3),(PSUM4,SUM4)
      POINTER (PSUM5,SUM5)
      PFUSU1=LOC(WFUSU1(1))
      PFUSU2=LOC(WFUSU2(1))
      PFUSU3=LOC(WFUSU3(1))
      PSUM1=LOC(WSUM1)
      PSUM2=LOC(WSUM2)
      PSUM3=LOC(WSUM3)
      PSUM4=LOC(WSUM4)
      PSUM5=LOC(WSUM5)
*
*
      DO 10 I=1,10
         FUSU1(I)=(-3)*I
   10 CONTINUE
*
      K=10
      DO 20 I=1,10
         FUSU2(I)=FUSU1(K)
         K=K-1
   20 CONTINUE
*
      N=I*(-2)
      DO 30 J=10,1,-2
         FUSU1(J-1)=N
         FUSU2(J)=J*I
   30 CONTINUE
*
      SUM1=0
      SUM2=0
      SUM3=0
      DO 40 I=1,10
         SUM1=SUM1+FUSU1(I)
         SUM2=SUM2+FUSU2(I)
   40 CONTINUE
      DO 50 I=1,10
         FUSU3(I)=0
         DO 51 J=1,10
            FUSU3(I)=FUSU3(I)+FUSU1(I)*FUSU2(J)
   51 CONTINUE
         SUM3=SUM3+FUSU3(I)
   50 CONTINUE
*
      DO 60 I=1,9
         DO 61 J=I+1,10
            IF(FUSU1(I).GT.FUSU1(J)) THEN
               IWORK=FUSU1(I)
               FUSU1(I)=FUSU1(J)
               FUSU1(J)=IWORK
            ENDIF
            IF(FUSU2(I).GT.FUSU2(J)) THEN
               IWORK=FUSU2(I)
               FUSU2(I)=FUSU2(J)
               FUSU2(J)=IWORK
            ENDIF
   61    CONTINUE
   60 CONTINUE
      SUM4=0
      SUM5=0
      DO 70 I=1,10
         SUM4=SUM4+FUSU1(I)
         SUM5=SUM5+FUSU2(I)
   70 CONTINUE
      ISUM1=SUM1*SUM2
      ISUM2=SUM4*SUM5
      WRITE(6,*) SUM1,SUM2,SUM3,SUM4,SUM5
      IF((ISUM1.EQ.ISUM2).AND.(ISUM1.EQ.SUM3)) THEN
         WRITE(6,*) '*** OK ***'
      ELSE
         WRITE(6,*) '*** NG ***'
      ENDIF
      STOP
      END
