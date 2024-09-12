      IMPLICIT REAL*8(D),COMPLEX*16(C)
      COMMON /VSU1/ DA1(20),DA2(20),DA3(20)
      COMMON /VSU2/ DB1(20,20),DB2(20,20),DB3(20,20)
      COMMON /VSU3/ CD1(20,20),CD2(20,20),CD3(20,20)
      DIMENSION DW1(20),DW2(20,20),CW1(20,20)

      NN=18
      CALL  INIT
      CALL  SUB1(NN)

      DO 10 I=1,20
        DW1(I)=DA1(I)+DA2(I)+DA3(I)
        DO 10 J=1,20
          DW2(I,J)=DB1(I,J)+DB2(I,J)+DB3(I,J)
          CW1(I,J)=CD1(I,J)+CD2(I,J)+CD3(I,J)
  10  CONTINUE
      WRITE(6,*) DW1
      WRITE(6,*) DW2
      WRITE(6,*) CW1

      CALL  INIT
      CALL  SUB2(NN)

      DO 30 I=1,20
        DW1(I)=DA1(I)+DA2(I)+DA3(I)
        DO 30 J=1,20
          DW2(I,J)=DB1(I,J)+DB2(I,J)+DB3(I,J)
          CW1(I,J)=CD1(I,J)+CD2(I,J)+CD3(I,J)
  30  CONTINUE
      WRITE(6,*) DW1
      WRITE(6,*) DW2
      WRITE(6,*) CW1
      STOP
      END
      SUBROUTINE INIT
      IMPLICIT REAL*8(D),COMPLEX*16(C)
      COMMON /VSU1/ DA1(20),DA2(20),DA3(20)
      COMMON /VSU2/ DB1(20,20),DB2(20,20),DB3(20,20)
      COMMON /VSU3/ CD1(20,20),CD2(20,20),CD3(20,20)
      DO 10 J=1,20
        DA1(J)=1.D0
        DA2(J)=2.D0
        DA3(J)=3.D0
        DO 10 I=1,20
          DB1(I,J)=DFLOAT(I)
          DB2(I,J)=DFLOAT(J)
          DB3(I,J)=1.D0-DFLOAT(I-J)
          CD1(I,J)=(1.D0,4.D0)
          CD2(I,J)=(2.D0,3.D0)
          CD3(I,J)=(3.D0,2.D0)
 10   CONTINUE
      RETURN
      END
      SUBROUTINE SUB1(NN)
      IMPLICIT REAL*8(D),COMPLEX*16(C)
      COMMON /VSU1/ DA1(20),DA2(20),DA3(20)
      COMMON /VSU2/ DB1(20,20),DB2(20,20),DB3(20,20)
      COMMON /VSU3/ CD1(20,20),CD2(20,20),CD3(20,20)

      DO 10 J=2,NN
        N1=J
        N2=J+1
        N3=J-1
        DA1(N1)=DA1(N2)+DB1(N1,N2)
        IF (DA2(J).GT.3.D0) THEN
          N2=1
        ENDIF
        DA2(N3)=DA2(N1)+DA3(N2)
        DO 20 I=2,NN
          DB1(I,N1)=DB2(I,N3)+DB3(N2,I)
          DB3(I,N2)=DREAL(CD3(I,J))-DIMAG(CD2(I,J))
          CD1(I,N2)=CD1(I-1,N2)+CD2(I,J)*CD3(I,J)
 20     CONTINUE
 10    CONTINUE
       DO 40 J=2,NN
 41     N1=J-1
 42     N2=1
 43     N3=N2+1
        DA2(J)=DA2(J-1)+DB2(N1,J)
        IF (DA3(J)) 44,44,45
 44     DA3(N1)=DA1(J)-DREAL(CD2(J,J))
 45     CD2(J,N1)=DCMPLX(DA1(J),DA2(N2))
        DO 30 I=2,NN
          DB2(I,N1)=DB3(I,N3)+DB2(N3,I)
          CD2(I,N3)=DCMPLX(DB1(I,N2),DA1(N1))
          CD3(I,N2)=CD2(I-1,N2)+CD2(I,J)-CD1(I,J)
 30     CONTINUE
 40    CONTINUE
      RETURN
      END
      SUBROUTINE SUB2(NN)
      IMPLICIT REAL*8(D),COMPLEX*16(C)
      COMMON /VSU1/ DA1(20),DA2(20),DA3(20)
      COMMON /VSU2/ DB1(20,20),DB2(20,20),DB3(20,20)
      COMMON /VSU3/ CD1(20,20),CD2(20,20),CD3(20,20)
      IPCON1=1
      IPCON2=IPCON1+1
      DO 10 I=3,NN
       N1=I+1
       N2=I-1
       N3=1
       IF (MOD(I,2).EQ.0) THEN
        DO 20 J=3,NN
          DA1(N1)=DMAX1(DA1(N1),DA2(J))
          DB1(N1,J)=DB1(N2,NN-J+1)-DA1(N2)
          CD1(J,N3)=CD1(IPCON2,J)+CD2(J,I)
 20     CONTINUE

        DO 30 J=2,NN
          CD2(J,N1+1)=CD2(J-1,N2+1)+CD3(J,I)
          DB2(J+1,I+N3)=DB2(J,IPCON1)-DA3(J)
 30     CONTINUE
       ENDIF
       N1=I-1
       N2=I+1
       N3=I
       IF (N3-10) 32,31,31
 31    CONTINUE
       DO 40 J=2,NN
         DB3(J,N1)=DB3(N1,N2)
         CD3(J+1,N3-1)=CD3(J,N2+1)+CD1(I,J)
 40    CONTINUE
       GOTO 33
 32    CONTINUE
       DO 50 J=3,NN/2
         DA2(J+N1)=DA2(J+N3)+DA3(J)
 50    CONTINUE
 33    CONTINUE
       DMAX=0.D0
       DO 60 J=2,NN
         IF (DREAL(CD1(N1,J)).GT.DMAX) THEN
           DMAX=DREAL(CD1(N1,J))
           CD2(N2,J)=CD1(N2,J-1)-CD2(J+1,N1-1)
         ENDIF
 60    CONTINUE
       WRITE(6,*) DMAX
       DMIN=9999.D0
       DO 70 J=2,NN
         IF (DIMAG(CD2(N1,J)).GT.DMIN) THEN
           DMAX=DREAL(CD2(N1,J))
           CD3(N2+1,J-1)=CD1(N2,J-1)-CD3(J+1,N1-1)
         ENDIF
 70    CONTINUE
       WRITE(6,*) DMIN
 10   CONTINUE
      RETURN
      END
