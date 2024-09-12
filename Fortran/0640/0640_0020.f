      PROGRAM MAIN
      REAL*8   D010(30),D020(30),D030(30),D040(30),
     *         D110(30,30),D120(30,30),D130(30,30),
     *         D210(-10:10),D220(-10:10),D230(-10:10)
      INTEGER*2  HDINT,HDTRM,HDINC
      REAL*4     RINV,RDOP

      DATA     IT1/1/,IT2/2/,IT3/3/,IT4/10/,IT5/15/,IT6/30/
      DATA     HDINT/1/,HDTRM/30/,HDINC/1/
      DATA     RDOP/30/

      DO 10 I=HDINT,30
        D010(I) = 3.0D0
        D020(I) = D010(I) * 2.0D0
        D030(I) = 4.0D0
        D040(I) = 2.0D0 - D010(I)
 10   CONTINUE
      DO 15 J=1,IT6
       DO 15 K=1,HDTRM
         D110(J,K) = D010(J)
         D120(J,K) = 2.0D0
         D130(J,K) = D030(K) * 2.0D0
 15   CONTINUE
      DO 20 I=-10,10,HDINC
        D210(I) = 4.0D0
        D220(I) = 5.0D0
        D230(I) = 6.0D0
 20   CONTINUE

      DO 30 I=2,IT4
        J=I-10
        D010(I*2+1) = D020(I+IT3+2) + D030(2*I+IT1+1)
        D040(I+1) = D040(I+IT4) * 2.0D0 - D020(I*2+1)
        D030(2*I+IT1+1) = D010(I*2) + D040(I)
        D210(J+2) = D010(I-1) * D220(I-1) - D230(J)
        IF (I.LE.5) THEN
          D220(I-2) = D210(I-10) + D230(2*I-1)
        ELSE
          D230(I-15) = D220(I-13) - D210(J)
        ENDIF
 30   CONTINUE
      WRITE(6,*) (D010(I),I=5,21,2)
      WRITE(6,*) (D030(I),I=6,22)
      WRITE(6,*) (D040(I),I=3,21)
      WRITE(6,*) (D210(J),J=-6,2)
      WRITE(6,*) (D220(J),J=0,3)
      WRITE(6,*) (D230(J),J=-9,-1)

      DO 40 I=IT3,20
        D010(I+1) = D110(I+2,10) + D020(IT3)
        D040(I+IT4) = D120(I,IT6) * D130(I,I)
        D020(IT3+I) = D030(I) + D010(IT3)
        D110(5,I+3) = D040(IT4) / D020(I+IT3-1)
 40   CONTINUE
      WRITE(6,*) (D010(K),K=3,20)
      WRITE(6,*) (D020(K),K=6,23)
      WRITE(6,*) (D040(K),K=13,30)
      WRITE(6,*) ((D110(I,J),I=4,5),J=6,23)

      DO 50 J=4,-4,-IT2
        D210(J*2+1) = D220(J-IT2) + D230(J+2+0)
        D220(J) = D210(J*2) - D010(J+10) / 2.0D0
        D230(J+2+IT2) = D020(J+15) * D030(J+20)
 50   CONTINUE
      WRITE(6,*) (D210(K),K=-7,9)
      WRITE(6,*) (D220(K),K=-4,4)
      WRITE(6,*) (D230(K),K=0,8)
      STOP
      END
