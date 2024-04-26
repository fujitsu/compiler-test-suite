      PROGRAM MAIN
      DIMENSION A(12),B(12)
      real      tmp0/0.0/,tmp1/1.0/,tmp2/2.0/,tmp3/3.0/,tmp4/4.0/,
     *          tmp5/5.0/,tmp6/6.0/,tmp7/7.0/,tmp8/8.0/,tmp9/9.0/
      REAL WORK(24)
      POINTER (PA,A),(PB,B)
      PA=LOC(WORK(1))
      PB=LOC(WORK(13))
      DO 1 I=1,12
         A(I)=2
         B(I)=3
    1 CONTINUE
      WRITE(6,*) A,B,' START '
      CALL    REKAE8(A,10,1,3,5,ANS)
      IF (ANS.NE.2) THEN
      WRITE(6,*) ANS,'*** NG-1 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-1 ***'
      CALL    REKAE7(A,B,10.0,ANS)
      IF (ANS.NE.10.0) THEN
      WRITE(6,*) ANS,'*** NG-2 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-2 ***'
      CALL    REKAE6(A,B,10,1,2,3,4,5,ANS)
      IF (ANS.NE.6) THEN
      WRITE(6,*) ANS,'*** NG-3 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-3 ***'
      CALL    REKAE5(A,10,1,2,3,4,ANS)
      IF (ANS.NE.2) THEN
      WRITE(6,*) ANS,'*** NG-4 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-4 ***'
      CALL    REKAE4(A,tmp0,tmp1,tmp2,tmp3,tmp4,tmp5,tmp6,tmp7,
     c                 tmp8,tmp9,
     C               1,2,3,4,5,6,7,8,9,10,11,
     C               ANS,10,1)
      IF (ANS.NE.128) THEN
      WRITE(6,*) ANS,'*** NG-5 ***'
      STOP
      ENDIF
      WRITE(6,*) '*** OK-5 ***'
      STOP
      END
      SUBROUTINE REKAE8(WORK,K,L,M,N,B)
      REAL WORK(12)
      REAL A(12)
      POINTER (PAA,A)
      PAA=LOC(WORK(1))
      X=12.0
      DO 20 J=1,K,L
        A(J)=1
      DO 10 I=1,K,L
        X=A(J)
        A(M)=X+1
        A(N)=X+1
   10 CONTINUE
   20 CONTINUE
      B=A(I-1)+X
      RETURN
      END
      SUBROUTINE REKAE7(A,B,X,C)
      DIMENSION A(12),B(12)
      DO 20 J=1,10
        A(J)=0.0
        DO 10 I=1,10
          A(J)=A(J)*B(I)
   10 CONTINUE
   20 CONTINUE
      C=A(I-1)+X
      RETURN
      END
      SUBROUTINE REKAE6(WORK1,WORK2,K,L,IQ,IO,IP,IR,Z)
      REAL WORK1(12),WORK2(12)
      REAL A(12),B(12)
      POINTER (PA1,A),(PB1,B)
      PA1=LOC(WORK1(1))
      PB1=LOC(WORK2(1))
      X=12.0
      DO 10 I=1,K,L
        A(IQ)=X+1
        Y=B(IO)
        W=A(IO)
        Z=B(IP)
        X=B(IO)
        A(IR)=X+1
   10 CONTINUE
      DO 11 JJ=1,12
        B(JJ)=A(I)+X
 11   CONTINUE
      Z=Y+Z
      RETURN
      END
      SUBROUTINE REKAE5(WORK3,K,L,IM,IN,II,B)
      REAL WORK3(12)
      REAL A(12)
      POINTER (PA2,A)
      PA2=LOC(WORK3(1))
      X=12.0
      DO 10 I=1,K,L
        A(IM)=X+1
        A(IN)=X+1
        X=A(II)
   10 CONTINUE
      B=A(I)+X
      RETURN
      END
      SUBROUTINE REKAE4(WORK4,X00,X01,X02,X03,X04,X05,X06,X07,X08,X09,
     C                    J00,J01,J02,J03,J04,J05,J06,J07,J08,J09,
     C                    J10,B5,K,L)
      REAL WORK4(12)
      REAL A(12)
      POINTER (PA5,A)
      PA5=LOC(WORK4(1))
      X=12.0
      DO 10 I=1,K,L
        X00=X00+A(J00)
        X01=X01+A(J01)
        X02=X02+A(J02)
        X03=X03+A(J03)
        X04=X04+A(J04)
        X05=X05+A(J05)
        X06=X06+A(J06)
        X07=X07+A(J07)
        X08=X08+A(J08)
        X09=X09+A(J09)
        A(J10)=X09
   10 CONTINUE
      B1=X00+X01+X02
      B2=X03+X04+X05
      B3=X06+X07+X08
      B4=X09+B1
      B5=B1+B2+B3+B4
      RETURN
      END
