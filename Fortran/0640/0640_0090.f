      subroutine ranu2(i,a,n,l)
      real a(n)
      do 10 ii=1,n
      a(ii)=real(ii)/n
10    if(ii.eq.1) a(ii)=2./n
      end
      REAL*4  A(100),B(1000),C(10000)
      INTEGER*4 L1(100),L2(1000),L3(10000)
      INTEGER*4 N1(100),N2(1000),N3(10000)
      DATA  IX/0/,N1,N2,N3/11100*0/

      CALL  RANU2(IX,A,100,ICON)
      DO 10 I=1,100
        L1(I)=ANINT(A(I)*100.)
 10   CONTINUE
      CALL  RANU2(IX,B,1000,ICON)
      DO 20 I=1,1000
        L2(I)=ANINT(B(I)*1000.)
 20   CONTINUE
      CALL  RANU2(IX,C,10000,ICON)
      DO 30 I=1,10000
        L3(I)=ANINT(C(I)*10000.)
 30   CONTINUE
      WRITE(6,*) (L1(I),I=1,64)
      WRITE(6,*) (L2(I),I=1,64)
      WRITE(6,*) (L3(I),I=1,64)

      DO 40 I=1,100
       NN=MOD(L1(I),2)
       IF (NN.EQ.0) L1(I)=L1(I)-1
       NN=MOD(L2(I),2)
       IF (NN.EQ.0) L2(I)=L2(I)-1
       NN=MOD(L3(I),2)
       IF (NN.EQ.0) L3(I)=L3(I)-1
  40  CONTINUE
      DO 50 I=1,100
        IF (N1(L1(I)).GE.1) THEN
          N1(L1(I))=N1(L1(I))+1
        ELSE
          N1(L1(I))=1
        ENDIF
        IF (N2(L2(I)).GE.1) THEN
          N2(L2(I))=N2(L2(I))+1
        ELSE
          N2(L2(I))=1
        ENDIF
        IF (N3(L1(I)).GE.1) THEN
          N3(L3(I))=N3(L3(I))+1
        ELSE
          N3(L3(I))=1
        ENDIF
  50  CONTINUE
      IC0=0
      IC1=0
      IC2=0
      DO 60 I=1,100
        IF (N1(I).EQ.0) IC0=IC0+1
        IF (N1(I).EQ.1) IC1=IC1+1
        IF (N1(I).GT.1) IC2=IC2+1
  60  CONTINUE
      WRITE(6,*) ' RAN=100   IC0=',IC0
      WRITE(6,*) '           IC1=',IC1
      WRITE(6,*) '           IC2=',IC2
      IC0=0
      IC1=0
      IC2=0
      DO 70 I=1,1000
        IF (N2(I).EQ.0) IC0=IC0+1
        IF (N2(I).EQ.1) IC1=IC1+1
        IF (N2(I).GT.1) IC2=IC2+1
  70  CONTINUE
      WRITE(6,*) ' RAN=1000  IC0=',IC0
      WRITE(6,*) '           IC1=',IC1
      WRITE(6,*) '           IC2=',IC2
      IC0=0
      IC1=0
      IC2=0
      DO 80 I=1,10000
        IF (N3(I).EQ.0) IC0=IC0+1
        IF (N3(I).EQ.1) IC1=IC1+1
        IF (N3(I).GT.1) IC2=IC2+1
  80  CONTINUE
      WRITE(6,*) ' RAN=10000 IC0=',IC0
      WRITE(6,*) '           IC1=',IC1
      WRITE(6,*) '           IC2=',IC2
      STOP
      END
