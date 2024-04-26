      PROGRAM MAIN
      COMMON //XH(15),ZH(15),UU(15,15,10),VV(15,15,10),
     +       X(15,15,10),Y(15,15,10),IV
      
      BL=2*1
      A=6-BL+2
      B=A-5
      IB1=10
      EX=IB1
      JL1=IB1
      SP=EX
      CALL INIT
      IV1=IV-2
      DO 38 I=1,IV1
        L=IV-I
        B=I/BL
 38   X(L,1,1)=X(IV,1,1)-A*B**EX
      WRITE(6,*) ((X(I,J,5),I=1,15),J=1,15,5)
C
      DO 140 I=IV,IB1
        I2=I+1
        XH(1)=.5*(X(I,1,1)+X(I2,1,1))
        DO 141 J=1,JL1
          J2=J+1
          ZH(1)=.25*(Y(I,J,1)+Y(I2,J,1)+Y(I2,J2,1)+Y(I,J2,1))
          XH(2)=XH(1)+SP*UU(I,J,1)
          ZH(2)=ZH(1)+SP*VV(I,J,1)
 141    CONTINUE
 140  CONTINUE
      WRITE(6,*) ZH,XH
      STOP
      END
C
      SUBROUTINE INIT
      COMMON //XH(15),ZH(15),UU(15,15,10),VV(15,15,10),
     +       X(15,15,10),Y(15,15,10),IV
      IV=12
      DO 10 I=1,10
        DO 10 J=1,15
          DO 10 K=1,15
            X(K,J,I)=2.
            Y(K,J,I)=2.
            UU(K,J,I)=2.
            VV(K,J,I)=2.
   10 CONTINUE
      DO 20 I=1,15
        XH(I)=3.
        ZH(I)=4.
   20 CONTINUE
      RETURN
      END
