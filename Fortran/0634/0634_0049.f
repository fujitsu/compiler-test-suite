      COMMON PAT(25,11),PPAT(25,11),I1,I2,I3,I4,I5
      DIMENSION NCARD(52),JCARD(52),KCARD(13)
      DIMENSION KI(13)
      NN=52
      J=1
      M=1
      K=10
      READ(5,1)NCARD
    1 FORMAT(I3)
      READ(5,110)PAT
  110 FORMAT(20A4/5A4)
      DO 10 I=1,52
   10 JCARD(I)=NCARD(I)
      DO 80 I=1,13
   80 KCARD(I)=0
   15 DO 20 I=3,39,3
      IF((JCARD(I)-K)/10)20,85,20
   85 IF(JCARD(I)-K)20,20,25
   20 CONTINUE
      J=J+1
      IF(J-4)30,30,100
   30 DO 35 N=1,NN
      IF(NCARD(N)-JCARD(40))35,40,35
   35 CONTINUE
   40 KK=N
      GO TO 45
   25 KCARD(M)=JCARD(I)
      M=M+1
      K=K+10
      IF(K-130)50,50,100
   50 DO 55 N=1,NN
      IF(NCARD(N)-JCARD(I))55,60,55
   55 CONTINUE
   60 KK=N
      NN=NN-1
      DO 65 N=KK,NN
   65 NCARD(N)=NCARD(N+1)
      J=1
   45 NK=NN-KK+1
      DO 70 N=1,NK
      IJ=N+KK-1
   70 JCARD(N)=NCARD(IJ)
      NK=NK+1
      DO 75 N=NK,NN
      IJ=N+KK-NN-1
   75 JCARD(N)=NCARD(IJ)
      GO TO 15
  100 DO 115 J=1,13
  115 KI(J)=5*(KCARD(J)-10*J)-5
      I1=20
      I2=20
      I3=KI(1)
      I4=20
      I5=20
      WRITE(6,120)
  120 FORMAT(1H1,5X,15H=============  )
      CALL MYPRINT
      IF(KI(2))1200,125,125
  125 I1=20
      I2=KI(2)
      I3=KI(3)
      I4=KI(4)
      I5=20
      WRITE(6,130)
  130 FORMAT(6X,15H=============  )
      CALL MYPRINT
      IF(KI(5))1200,135,135
  135 IF(KI(8))140,150,150
  140 I1=KI(5)
      I2=KI(6)
      I3=KI(7)
      I4=20
      I5=20
      WRITE(6,145)
  145 FORMAT(6X,15H=============  )
      CALL MYPRINT
      GO TO 1200
  150 I1=KI(5)
      I2=KI(6)
      I3=KI(7)
      I4=KI(8)
      I5=KI(9)
      WRITE(6,145)
      CALL MYPRINT
      IF(KI(11))155,165,165
  155 I1=20
      I2=KI(10)
      I3=20
      I4=20
      I5=20
      WRITE(6,160)
  160 FORMAT(6X,15H=============  )
      CALL MYPRINT
      GO TO 1200
  165 I1=20
      I2=KI(10)
      I3=KI(11)
      I4=KI(12)
      I5=20
      WRITE(6,160)
      CALL MYPRINT
      I1=20
      I2=20
      I3=KI(13)
      I4=20
      I5=20
      WRITE(6,170)
  170 FORMAT(6X,15H=============  )
      CALL MYPRINT
 1200 STOP
      END
      SUBROUTINE MYPRINT
      COMMON PAT(25,11),PPAT(25,11),I1,I2,I3,I4,I5
      DO 1000 J=1,11
      DO 1000 I=1,5
      PPAT(I,J)=PAT(I1+I,J)
      PPAT(I+5,J)=PAT(I2+I,J)
      PPAT(I+10,J)=PAT(I3+I,J)
      PPAT(I+15,J)=PAT(I4+I,J)
 1000 PPAT(I+20,J)=PAT(I5+I,J)
      WRITE(6,1100)((PPAT(M,MM),M=1,25),MM=1,11)
 1100 FORMAT(1H+,20X,25A4/10(21X,25A4/))
      RETURN
      END
