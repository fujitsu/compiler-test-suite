      PROGRAM MAIN
      IMPLICIT   REAL*8(D),COMPLEX*16(C)
      DIMENSION  DA10(20),DA20(20),DA30(20),DB10(20,20),
     *          DB20(20,20),DB30(20,20),ID10(20),ID20(20)
      DIMENSION  CD10(20,20),CD20(20,20),CD30(20,20),
     *          CD40(20),CD50(20)
      DATA    DA10/20*1.D0/,DA20/20*2.D0/,DA30/20*4.D0/
      DATA    DB10/400*2.D0/,DB20/400*4.D0/,DB30/400*6.D0/
      DATA    CD10/400*(4.D0,2.D0)/,CD20/400*(1.D0,1.D0)/
      DATA    CD30/400*(2.D0,2.D0)/
      DATA    CD40/20*(4.D0,16.0D0)/,CD50/20*(2.D0,4.D0)/
      DATA    ID10/20*1/,ID20/20*0/
      IVAL1 = 1
      IVAL2 = 2
      DVAL1 = 0.0D0

      DO 10 I=1,20
        IF ( IVAL1 .GT. 15 ) GO TO 10
          DO 20 J=10,20
            DA10(1) = DA20(J) + DA30(J)
            DA10(1) = DA20(J) - DA10(J) + DA10(1)
            DA20(2) = DA20(2) + DA10(J) * DA30(J) - DB20(I,J)
 20       CONTINUE
        CALL   SUB1(CD40(I),CD50(I),DA10(1),DA20(2))
 30     ASSIGN 30 TO JJ
        IF (IVAL2 .GT. 40) THEN
          ASSIGN  40 TO JJ
        ENDIF
        ID10(I) = ID20(I) + ID10(I)
        IVAL2 = IVAL2 + ID10(I) + IDINT(DA20(I))
        GO TO JJ,(30,40)
 40     IVAL1 = IVAL1 + ID20(I)
        DO 50 J=2,10
          DB10(I,J) = DB20(I,J) + DB30(I,J)
          INV = J+10
          DB20(I,INV) = DMAX1(DB10(I,J),DB10(I,INV)) + DB30(J,I)
          DB30(J,J) = DB30(J+1,J-1) + DIMAG(CD20(J,I))
 50     CONTINUE
      DVAL1 =0.0D0
      DVAL2 =0.0D0
      DO 60 J=1,20
        CD40(I) = CD40(I) + CD10(I,J) - CD20(I,J) + CD50(J)
        CD40(I) = CD40(I) - CD30(I,J)
        IF ( DIMAG(CD20(I,J)) .GT. DVAL1 ) THEN
          DVAL1 = DIMAG(CD20(I,J))
        ENDIF
        DVAL2 = DVAL2 + DIMAG( CD50(J) ) + DREAL( CD10(J,I) )
 60   CONTINUE
      WRITE(6,*) ' DVAL1 = ',DVAL1,' DVAL2 = ',DVAL2
      WRITE(6,*) ' (CD40(I)) = ',CD40(I)
 70   CONTINUE
      DO 80 K=IVAL1,20
        CD10(I,K) = CD20(I,K) + CD30(I,K)
        CD30(K,I) = CD20(I,K) + CD10(K,I)
 80   CONTINUE
 10   CONTINUE
      WRITE(6,*) ID10
      WRITE(6,*) ((DB10(I,J),I=1,10),J=1,10)
      WRITE(6,*) ((DB20(I,J),I=1,10),J=11,20)
      WRITE(6,*) (DB30(K,K),K=1,10)
      WRITE(6,*) ' IVAL1 = ',IVAL1,' IVAL2 = ',IVAL2
      STOP
      END

      SUBROUTINE   SUB1(CDX,CDY,DX,DY)
      COMPLEX*16   CDX,CDY,CDX1,CDY1
      REAL*8       DX,DY,DUMY1(2),DUMY2(2)
      EQUIVALENCE   (CDX1,DUMY1),(CDY1,DUMY2)
      CDX1 = CDX
      CDY1 = CDY
      DO 10 I=1,2,2
        DUMY1(I) = DMAX1(DX,DY)
        DUMY1(I+1) = DDIM(DX,DY)
        DUMY2(I) = DMIN1(DX,DY)
        DUMY2(I+1) = DDIM(DY,DX)
 10   CONTINUE
      CDX = CDX1
      CDY = CDY1
      WRITE(6,*) CDX,CDY
      WRITE(6,*) DX,DY
      RETURN
      END
