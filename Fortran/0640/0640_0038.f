      PROGRAM MAIN
      CALL EQIND
      STOP
      END

      SUBROUTINE EQIND
      INTEGER*4  Y,X,RA(10),RB(10)
      INTEGER*4  ID1,ID2,ID3,ID4
      LOGICAL*4  L4A(10,10),Z
      COMPLEX*8  CEA(10),CEB(10,10)
      REAL   *8  DA(10),DB(10)
      REAL   *4  RC(10),RD(10)
      EQUIVALENCE (ID1,Y),(ID2,RA(1)),(X,RA(3))
     +            ,(ID3,RB(1)),(ID4,Z)


      DATA  RA/10*1  /,RB/10*1  /,DA/10*1.0/,DB/10*1.0/
     +     ,CEA/10*(1.,1.)/,CEB/100*(1.,1.)/,RC/10*1./,RD/10*1.0/
     +     ,L4A/100*.TRUE./

      ID1  =0
      ID2=0
      ID3=0
      ID4=0
      DO 10 I=1,10
        IF(Y.GT.5) THEN
          DA(Y)=DA(Y)+DB(Y)*0.5
          CEA(Y)=(1.,1.2)*DA(Y)+(0.5,1.0)*DB(Y)
        ENDIF
        ID1=ID1+1
        IF(ID1.LE.10) THEN
          DB(I)=RC(ID1)+Y
          RD(Y)=DB(I)+I+ID1
        ENDIF
   10 CONTINUE
      WRITE(6,*)'DA=',DA
      WRITE(6,*)'CEA=',CEA
      WRITE(6,*)'DB=',DB
      WRITE(6,*)'Y=',Y
      WRITE(6,*)'RB=',RB

      ID2=1
      DO 20 I=1,10
        ID2=ID2+1
        IF(ID2.LE.10) THEN
         RA(ID2)=RB(I)+CEA(I)*2.
         IF(X.GE.1)THEN
          RC(ID2)=DA(ID2)*CEA(ID2)
          DA(ID2)=ID2+RA(ID2)
         ENDIF
        ENDIF
  20  CONTINUE
      WRITE(6,*)'RA=',RA
      WRITE(6,*)'RC=',RC
      WRITE(6,*)'DA=',DA

      ID4=0
      DO 30 I=1,10
        ID4=ID4+1
        RD(I)=DA(I)*CEA(I)*(1.,1.)
        DA(I)=RD(ID4)+RD(I)*(1.,1.)*CEA(I)

        DO 40 J=1,9
          IF(L4A(I,J)) THEN
            CEB(J,ID4)=RD(I)*(1.,1.)+CEA(I)
          ENDIF
   40   CONTINUE

        IF(Z) THEN
          RA(I)=ID4+CEB(J,ID4)+DA(I)
        ENDIF
   30 CONTINUE

      WRITE(6,*)'RD='
      WRITE(6,991)RD
991   FORMAT(5F15.6)
      WRITE(6,*)'DA=',DA
      WRITE(6,*)'L4A=',L4A
      WRITE(6,*)'CEB='
      WRITE(6,993)CEB
993   FORMAT(1X,'(',F10.5,',',F10.5,')')
      WRITE(6,*)'RA=',RA

      ID3=0
      DO 50 I=2,10
        ID3=ID3+1
        IF(RB(I).GE.3.AND.RB(I).LE.9) THEN
          RC(I)=RD(ID3)+DB(I)
          IF(DB(ID3).GT.0.) THEN
            DA(ID3)=RC(I)+RD(ID3)+RC(I-1)
          ENDIF
          DB(I-1)=ID1+ID2+ID3+RA(I)+RC(I)*2.0
        ENDIF
   50 CONTINUE

      WRITE(6,*)'RB=',RB
      WRITE(6,*)'DB=',DB
      WRITE(6,*)'DA=',DA
      RETURN
      END
