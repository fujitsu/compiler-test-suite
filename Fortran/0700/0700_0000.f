      SUBROUTINE EDF020 (IMODE ,ENTIDS ,NUM ,DIVNUM ,ERS ,PRTHT ,LAYER  
     *                                      ,POS ,CATOFG ,IRCODE)
      INTEGER*4  IMODE
      INTEGER*4  ENTIDS(*)
      INTEGER*4  NUM
      INTEGER*4  DIVNUM
      INTEGER*4  ERS
      INTEGER*4  LAYER
      INTEGER*4  IRCODE(2)
      REAL*8  PRTHT
      REAL*8  POS(2)
      INTEGER*4  MSGNO
      INTEGER*4  IRCD
      INTEGER*4  N0
      INTEGER*4  RCD
      INTEGER*4  ATRID
      INTEGER*4  I
      INTEGER*4  ATRTBL(4)
      INTEGER*4  IDNO
      INTEGER*4  ENTTYP
      INTEGER*4  DTCODE
      INTEGER*4  CLTID(5)
      INTEGER*4  TYPID(5)
      INTEGER*4  DHEX(2)
      INTEGER*4  DDEC
      INTEGER*4  CNT
      INTEGER*4  FIGFLG
      INTEGER*4  INC
      INTEGER*4  J
      INTEGER*4  OENTID
      INTEGER*4  ORGFLG
      INTEGER*4  CRTFLG
      INTEGER*4  MODE
      INTEGER*4  N8
      INTEGER*4  VISI
      INTEGER*4  DISP
      INTEGER*4  TMODE
      INTEGER*4  ISEGNO
      INTEGER*4  N1
      INTEGER*4  SAVFLG
      INTEGER*4  ATRTB2(2)
      INTEGER*4  PRMNO
      INTEGER*4  CODE
      INTEGER*4  ACRTFG
      INTEGER*4  IATRHD(4)
      INTEGER*4  RSSTID(255)
      INTEGER*4  STFLG
      INTEGER*4  ENDPFG
      INTEGER*4  FONT
      INTEGER*4  PESADR
      INTEGER*4  ARCNUM
      INTEGER*4  N
      INTEGER*4  STPNT
      INTEGER*4  ENDPNT
      INTEGER*4  SETFLG
      INTEGER*4  SFCFLG
      INTEGER*4  CATOFG
      INTEGER*4  I1
      INTEGER*4  J1
      REAL*8  ARRAY(512)
      REAL*8  XARRAY(256)
      REAL*8  YARRAY(256)
      REAL*8  CHRATR(6)
      REAL*8  XE
      REAL*8  YE
      REAL*8  TH
      REAL*8  XSTART
      REAL*8  YSTART
      REAL*8  ORG(2)
      REAL*8  DATRHD
      REAL*8  TH1
      REAL*8  TH2
      REAL*8  XS1
      REAL*8  YS1
      REAL*8  XE1
      REAL*8  YE1
      REAL*8  X1
      REAL*8  Y1
      REAL*8  EPS
      REAL*8  XSPOLY
      REAL*8  YSPOLY
      REAL*8  X2
      REAL*8  Y2
      REAL*8  XS
      REAL*8  YS
      REAL*8  LNGX
      REAL*8  LNGY
      REAL*8  VCTX
      REAL*8  VCTY
      REAL*4  ATRTB1(6)
      CHARACTER*6  MODID1
      CHARACTER*6  MODID2
      CHARACTER*4  INSMSG
      CHARACTER*8  TEXTS
      CHARACTER*8  WKTEXT
      INTEGER*4  SURFNO
      INTEGER*4  SURF(1)
      INTEGER*4  SFWK(1)
      INTEGER*4  SIZE
      INTEGER*4  MAXTBL(4)
      INTEGER*4  SRFOFF
      INTEGER*4  SFWOFF
      INTEGER*4  DIRECT
      INTEGER*4  RAYNO
      INTEGER*4  SFSFLG
      INTEGER*4  RKIND
      REAL*8  CORD(2,2)
      CHARACTER*8  TXTWK
      INTEGER*4  VBQTYP
      INTEGER*4  VBQLNG
      EXTERNAL   VBQTYP
      EXTERNAL   VBQLNG
      EQUIVALENCE      ( SURF, SFWK )
      EQUIVALENCE        (DHEX(1) ,ARRAY(1))
      REAL*8  PI
      REAL*8  DEGRAD
      REAL*8  RADDEG
      PARAMETER( PI=3.1415926535897932D0 )
      PARAMETER( DEGRAD=1.7453292519943296D-2 )
      PARAMETER( RADDEG=5.7295779513082321D1 )
      DATA N0/0/
      DATA N1/1/
      DATA N8/8/
      DATA EPS/1.0D-6/
      DATA MODID1/'EDF020'/
      DATA ATRID/0/
      DATA CLTID/37,3,4,39,40/
      DATA TYPID/24,23,23,23,24/
      DATA ORGFLG/0/
      DATA INC/1/
      DATA OENTID/0/
      DATA VISI/1/
      DATA DISP/1/
      DATA PRMNO/1/
      DATA TMODE/1/
      DATA CODE/0/
      DATA SAVFLG/1/
      XSTART=0.0D0
      YSTART=0.0D0
      CNT=0
      MODE=0
      IRCODE(1)=0
      IRCODE(2)=0
      CRTFLG   =0
      ACRTFG   =0
      SETFLG   =0
      SFCFLG   =0
      SFSFLG   =0
      MODID2=' '
      IF  (IMODE.NE.1)  THEN
        TH = 2*PI / DIVNUM
      ENDIF
      CALL  VHQWKA ( SURF, 4, 4, SRFOFF, SIZE )
      MAXTBL(1) = SIZE/7*2
      SFWOFF    = SRFOFF + MAXTBL(1)
      MAXTBL(2) = SIZE - MAXTBL(1)
      IDNO = CLTID(IMODE)
      CALL  VQCLT  (IDNO ,LAYER ,ATRTBL ,DTCODE ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=5
        MODID2='VQCLT'
        GO TO  8100
      ENDIF
      CALL  SFSOLA  (ATRID ,ATRTBL ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=2
        MODID2='SFSOLA'
        GO TO  8100
      ENDIF
      IATRHD(1)=0
      IATRHD(2)=2
      IATRHD(3)=0
      IATRHD(4)=0
      DATRHD   =3.0D0
      CALL  SFSHDA  (ATRID ,IATRHD ,DATRHD ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=4
        MODID2='SFSHDA'
        GO TO  8100
      ENDIF
      CALL  VQTYPE  (TYPID(IMODE) ,ENTTYP ,DTCODE ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=5
        MODID2='VQTYPE'
        GO TO  8100
      ENDIF
      IF ( NUM .GT. 255 )  GO TO 8200
      DO 100 I = 1, NUM
         RSSTID(I) = ENTIDS(I)
  100 CONTINUE
      IF  (IMODE.EQ.1)  THEN
  200    CONTINUE
         IF ( NUM .GT. 1 )  THEN
            CALL  SPDGET ( RSSTID(1), PRMNO, ARRAY, IRCD )
            IF ( IRCD .NE. 0 )  THEN
               MODE = 2
               MODID2 = 'SPDGET'
               GO TO 8100
            ENDIF
            DDEC = VBQTYP ( DHEX(1) )
            IF ( DDEC .EQ. 2 )  THEN
               X1 = ARRAY(2)
               Y1 = ARRAY(3)
               X2 = ARRAY(2) + ARRAY(4)*ARRAY(6)
               Y2 = ARRAY(3) + ARRAY(5)*ARRAY(6)
            ELSEIF ( DDEC .EQ. 3 )  THEN
               N  = (VBQLNG(DHEX(1)) - 24 ) / 16
               X1 = ARRAY(2)
               Y1 = ARRAY(3)
               X2 = ARRAY(2) + ARRAY(2*N+2)
               Y2 = ARRAY(3) + ARRAY(2*N+3)
            ELSEIF ( DDEC .EQ. 5 )  THEN
               X1 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5))
               Y1 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5))
               X2 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
               Y2 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            ELSE
               IF ( DDEC .EQ. 4. OR. DDEC .EQ. 10 )  GO TO 8250
               GO TO 8280
            ENDIF
            CALL  SPDGET ( RSSTID(2), PRMNO, ARRAY, IRCD )
            IF ( IRCD .NE. 0 )  THEN
               MODE = 2
               MODID2 = 'SPDGET'
               GO TO 8100
            ENDIF
            DDEC = VBQTYP ( DHEX(1) )
            IF ( DDEC .EQ. 2 )  THEN
               XS1 = ARRAY(2)
               YS1 = ARRAY(3)
               XE1 = ARRAY(2) + ARRAY(4)*ARRAY(6)
               YE1 = ARRAY(3) + ARRAY(5)*ARRAY(6)
            ELSEIF ( DDEC .EQ. 3 )  THEN
               N  = (VBQLNG(DHEX(1)) - 24 ) / 16
               XS1 = ARRAY(2)
               YS1 = ARRAY(3)
               XE1 = ARRAY(2) + ARRAY(2*N+2)
               YE1 = ARRAY(3) + ARRAY(2*N+3)
            ELSEIF ( DDEC .EQ. 5 )  THEN
               XS1 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5))
               YS1 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5))
               XE1 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
               YE1 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            ELSE
               IF ( DDEC .EQ. 4. OR. DDEC .EQ. 10 )  GO TO 8250
               GO TO 8280
            ENDIF
            IF ( (DABS(X2-XS1) .LT. EPS .AND. DABS(Y2-YS1) .LT. EPS)    
     *       .OR. (DABS(X2-XE1) .LT. EPS .AND. DABS(Y2-YE1) .LT. EPS) ) 
     *                                                     THEN
               IF ( NUM .GT. 2 .OR. SFCFLG .EQ. 0 )  THEN
                  CORD(1,1) = X1
                  CORD(2,1) = Y1
                  CORD(1,2) = X1
                  CORD(2,2) = Y1
               ELSE
                  CORD(1,1) = X2
                  CORD(2,1) = Y2
                  CORD(1,2) = X2
                  CORD(2,2) = Y2
               ENDIF
            ELSEIF ((DABS(X1-XS1) .LT. EPS .AND. DABS(Y1-YS1) .LT. EPS) 
     *         .OR. (DABS(X1-XE1) .LT. EPS .AND. DABS(Y1-YE1) .LT. EPS))
     *                                                     THEN
               CORD(1,1) = X2
               CORD(2,1) = Y2
               CORD(1,2) = X2
               CORD(2,2) = Y2
            ELSE
               GO TO 8240
            ENDIF
         ENDIF
         CALL  SFCRTS ( ENTTYP, ATRID, VISI, ORGFLG, ORG,               
     *                  MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),         
     *                  DTCODE, IRCD )
         IF ( IRCD .NE. 0 )  THEN
            IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 121 )  GO TO 8220
            MODE = 4
            MODID2 = 'SFCRTS'
            GO TO 8100
         ENDIF
         CRTFLG = 1
        DO  500  I=1 ,NUM
          CALL  SPDGET  (RSSTID(I) ,PRMNO ,ARRAY ,IRCD)
          IF  (IRCD.NE.0)  THEN
            MODE=2
            MODID2='SPDGET'
            GO TO  8100
          ENDIF
          DDEC = VBQTYP ( DHEX(1) )
          IF  (DDEC.EQ.4)  THEN
            IF ( NUM .GT. 1 )  GO TO 8250
            DO  400  J=1 ,2
              IF  (J.EQ.1)  THEN
                TH1=0.0D0
                TH2=PI
              ELSE
                TH1=PI
                TH2=PI
              ENDIF
              CALL  SFCSAS (ARRAY(2), ARRAY(3), ARRAY(4), TH1, TH2,     
     *                      MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),     
     *                      DTCODE, IRCD )
              IF ( IRCD.NE.0 )  THEN
                 IF ( IRCD .EQ. 8 .AND.                                 
     *               (DTCODE .EQ. 121 .OR. DTCODE .EQ. 122 )) GO TO 8220
     *
                 IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1172 )    GO TO 8240
                 MODID2 = 'SFCSAS'
                 MODE = 4
                 GO TO  8100
              ENDIF
  400   CONTINUE
          ELSEIF (DDEC.EQ.10)  THEN
            IF ( NUM .GT. 1 )  GO TO 8250
            VCTX = ARRAY(4)
            VCTY = ARRAY(5)
            LNGX = ARRAY(6)
            LNGY = ARRAY(7)
            ARRAY(4)  = LNGX*VCTX             + ARRAY(2)
            ARRAY(5)  = LNGX*VCTY             + ARRAY(3)
            ARRAY(6)  = LNGX*VCTX - LNGY*VCTY + ARRAY(2)
            ARRAY(7)  = LNGX*VCTY + LNGY*VCTX + ARRAY(3)
            ARRAY(8)  = - LNGY*VCTY           + ARRAY(2)
            ARRAY(9)  =   LNGY*VCTX           + ARRAY(3)
            ARRAY(10) = 0.0D0                 + ARRAY(2)
            ARRAY(11) = 0.0D0                 + ARRAY(3)
            CALL  SFCSPS ( ARRAY(2), ARRAY(3), 5, 2, MAXTBL,            
     *                     SURF(SRFOFF+1), SFWK(SFWOFF+1),              
     *                     DTCODE, IRCD )
            IF ( IRCD.NE.0 )  THEN
               IF ( IRCD .EQ. 8 .AND.                                   
     *             (DTCODE .EQ. 121 .OR. DTCODE .EQ. 122 )) GO TO 8220
               IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 )    GO TO 8240
               MODID2 = 'SFCSPS'
               MODE = 4
               GO TO  8100
            ENDIF
          ELSE
            IF ( DDEC .EQ. 2 )  THEN
               X1 = ARRAY(2)
               Y1 = ARRAY(3)
               X2 = ARRAY(2) + ARRAY(4)*ARRAY(6)
               Y2 = ARRAY(3) + ARRAY(5)*ARRAY(6)
            ELSEIF ( DDEC .EQ. 3 )  THEN
               N  = (VBQLNG(DHEX(1)) - 24 ) / 16
               X1 = ARRAY(2)
               Y1 = ARRAY(3)
               X2 = ARRAY(2) + ARRAY(2*N+2)
               Y2 = ARRAY(3) + ARRAY(2*N+3)
            ELSEIF ( DDEC .EQ. 5 )  THEN
               X1 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5))
               Y1 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5))
               X2 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
               Y2 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            ELSE
               IF ( DDEC .EQ. 4. OR. DDEC .EQ. 10 )  GO TO 8250
               GO TO 8280
            ENDIF
            DIRECT = 0
            IF ( NUM .EQ. 1 )  THEN
               IF ( SFCFLG .EQ. 1 )  THEN
                  DIRECT = 1
               ENDIF
            ELSE
               IF ( DABS(X1-CORD(1,2)) .LT. EPS .AND.                   
     *              DABS(Y1-CORD(2,2)) .LT. EPS )  THEN
                  CORD(1,2) = X2
                  CORD(2,2) = Y2
               ELSEIF ( DABS(X2-CORD(1,2)) .LT. EPS .AND.               
     *                  DABS(Y2-CORD(2,2)) .LT. EPS ) THEN
                  CORD(1,2) = X1
                  CORD(2,2) = Y1
                  DIRECT = 1
               ELSE
                  GO TO 8240
               ENDIF
            ENDIF
            IF ( DDEC .EQ. 5 )  THEN
               IF ( DIRECT .EQ. 1 )  THEN
                  TH1 = ARRAY(5)
                  TH2 = ARRAY(6)
                  ARRAY(5) = TH1 + TH2
                  IF ( ARRAY(5) .GT. 2.D0*PI )  THEN
                     ARRAY(5) = ARRAY(5) - 2.D0*PI
                  ELSEIF ( ARRAY(5) .LT. -2.D0*PI )  THEN
                     ARRAY(5) = ARRAY(5) + 2.D0*PI
                  ENDIF
                  ARRAY(6) = -TH2
               ENDIF
               CALL  SFCSAS ( ARRAY(2), ARRAY(3), ARRAY(4),             
     *                        ARRAY(5), ARRAY(6),                       
     *                        MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),   
     *                        DTCODE, IRCD )
               IF ( IRCD.NE.0 )  THEN
                  IF ( IRCD .EQ. 8 .AND.                                
     *                ( DTCODE.EQ.121 .OR. DTCODE.EQ.122 ) ) GO TO 8220
                  IF ( IRCD .EQ. 8 .AND.                                
     *                                     DTCODE.EQ.1172 )  GO TO 8240
                  MODID2 = 'SFCSAS'
                  MODE = 4
                  GO TO  8100
               ENDIF
            ELSE
               IF ( DDEC .EQ. 2 )  THEN
                  N = 1
                  ARRAY(4) = ARRAY(2) + ARRAY(4)*ARRAY(6)
                  ARRAY(5) = ARRAY(3) + ARRAY(5)*ARRAY(6)
               ELSE
                  N  = (VBQLNG(DHEX(1)) - 24 ) / 16
                  DO 410 J = 1, N
                     ARRAY(2*J+2) = ARRAY(2) + ARRAY(2*J+2)
                     ARRAY(2*J+3) = ARRAY(3) + ARRAY(2*J+3)
  410             CONTINUE
               ENDIF
               N = N + 1
               IF ( DIRECT .EQ. 1 )  THEN
                  I1 = 1
                  J1 = N
  420             CONTINUE
                  IF ( I1 .LT. J1 )  THEN
                      X1 = ARRAY(I1*2)
                      Y1 = ARRAY(I1*2+1)
                      ARRAY(I1*2)   = ARRAY(J1*2)
                      ARRAY(I1*2+1) = ARRAY(J1*2+1)
                      ARRAY(J1*2)   = X1
                      ARRAY(J1*2+1) = Y1
                      I1 = I1 + 1
                      J1 = J1 - 1
                      GO TO 420
                   ENDIF
               ENDIF
               CALL  SFCSPS ( ARRAY(2), ARRAY(3), N, 2, MAXTBL,         
     *                        SURF(SRFOFF+1), SFWK(SFWOFF+1),           
     *                              DTCODE, IRCD )
               IF ( IRCD.NE.0 )  THEN
                  IF ( IRCD .EQ. 8 .AND.                                
     *                (DTCODE.EQ.121 .OR. DTCODE.EQ.122 ) ) GO TO 8220
                  IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 ) GO TO 8240
                  MODID2 = 'SFCSPS'
                  MODE = 4
                  GO TO  8100
               ENDIF
            ENDIF
          ENDIF
  500   CONTINUE
        CALL  SFCEDS ( MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                 DTCODE, IRCD )
        CRTFLG = 0
        IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 134 .AND. SFCFLG .EQ. 0 )    
     *                                                             THEN
          IF ( NUM .GT. 2 ) THEN
            DO 600 I = 1, NUM
              RSSTID(I) = ENTIDS(NUM+1-I)
  600       CONTINUE
          ENDIF
          SFCFLG = 1
          GO TO 200
        ENDIF
        IF ( IRCD .NE. 0 )  THEN
           IF( (IRCD .EQ. 8) .AND.                                      
     *         (DTCODE .GE. 121) .AND. (DTCODE .LE. 125) ) GO TO 8220
           IF( (IRCD .EQ.  8) .AND. (DTCODE .EQ. 133) )    GO TO 8240
           IF( (IRCD .EQ. 8) .AND.                                      
     *         (DTCODE .GE. 132) .AND. (DTCODE .LE. 135) ) GO TO 8260
           MODE=4
           MODID2='SFCEDS'
           GO TO  8100
        ENDIF
        GO TO 5000
      ENDIF
      CALL  SPDGET  (RSSTID(1) ,PRMNO ,ARRAY ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=2
        MODID2='SPDGET'
        GO TO  8100
      ENDIF
      DDEC = VBQTYP ( DHEX(1) )
      IF  ((NUM.EQ.1).AND.(DDEC.EQ.10))  THEN
         CALL  SFCRTS ( ENTTYP, ATRID, VISI, ORGFLG, ORG,               
     *                  MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),         
     *                  DTCODE, IRCD )
         IF ( IRCD .NE. 0 )  THEN
            IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 121 )  GO TO 8220
            MODE = 4
            MODID2 = 'SFCRTS'
            GO TO 8100
         ENDIF
         CRTFLG = 1
         VCTX = ARRAY(4)
         VCTY = ARRAY(5)
         LNGX = ARRAY(6)
         LNGY = ARRAY(7)
         ARRAY(4)  = LNGX*VCTX             + ARRAY(2)
         ARRAY(5)  = LNGX*VCTY             + ARRAY(3)
         ARRAY(6)  = LNGX*VCTX - LNGY*VCTY + ARRAY(2)
         ARRAY(7)  = LNGX*VCTY + LNGY*VCTX + ARRAY(3)
         ARRAY(8)  = - LNGY*VCTY           + ARRAY(2)
         ARRAY(9)  =   LNGY*VCTX           + ARRAY(3)
         ARRAY(10) = 0.0D0                 + ARRAY(2)
         ARRAY(11) = 0.0D0                 + ARRAY(3)
         CALL  SFCSPS ( ARRAY(2), ARRAY(3), 5, 2, MAXTBL,               
     *                  SURF(SRFOFF+1), SFWK(SFWOFF+1),                 
     *                  DTCODE, IRCD )
         IF ( IRCD.NE.0 )  THEN
            IF ( IRCD .EQ. 8 .AND.                                      
     *          (DTCODE .EQ. 121 .OR. DTCODE .EQ. 122 )) GO TO 8220
            IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 )    GO TO 8240
            MODID2 = 'SFCSPS'
            MODE = 4
            GO TO  8100
         ENDIF
         CALL  SFCEDS ( MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),         
     *                  DTCODE, IRCD )
         CRTFLG = 0
         IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 134 .AND.                   
     *        CATOFG .EQ. 2 )                               GO TO 700
         IF ( IRCD .NE. 0 )  THEN
            IF( (IRCD .EQ. 8) .AND.                                     
     *          (DTCODE .GE. 121) .AND. (DTCODE .LE. 125) ) GO TO 8220
            IF( (IRCD .EQ.  8) .AND. (DTCODE .EQ. 133) )    GO TO 8240
            IF( (IRCD .EQ. 8) .AND.                                     
     *          (DTCODE .GE. 132) .AND. (DTCODE .LE. 135) ) GO TO 8260
            MODE=4
            MODID2='SFCEDS'
            GO TO  8100
         ENDIF
  700    CONTINUE
         GO TO 5000
      ENDIF
 2000 CONTINUE
      CALL  SFCRTS ( ENTTYP, ATRID, VISI, ORGFLG, ORG,                  
     *               MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),            
     *               DTCODE, IRCD )
      IF ( IRCD .NE. 0 )  THEN
         IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 121 )  GO TO 8220
         MODE = 4
         MODID2 = 'SFCRTS'
         GO TO 8100
      ENDIF
      CRTFLG=1
      DO  3000  I=1 ,NUM
        CALL  SPDGET  (RSSTID(I) ,PRMNO ,ARRAY ,IRCD)
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SPDGET'
          GO TO  8100
        ENDIF
        DDEC = VBQTYP ( DHEX(1) )
        IF  (I.EQ.1)  FIGFLG=DDEC
        IF  ((NUM.GT.1).AND.((DDEC.EQ.4).OR.(DDEC.EQ.10)))  GO TO  8250
        IF  (DDEC.EQ.4)  GO TO  1100
        IF  (DDEC.EQ.2)  THEN
          X1=ARRAY(2)
          Y1=ARRAY(3)
          X2=ARRAY(2)+ARRAY(4)*ARRAY(6)
          Y2=ARRAY(3)+ARRAY(5)*ARRAY(6)
          IF ( SFCFLG .EQ. 1 ) THEN
            X1=ARRAY(2)+ARRAY(4)*ARRAY(6)
            Y1=ARRAY(3)+ARRAY(5)*ARRAY(6)
            X2=ARRAY(2)
            Y2=ARRAY(3)
          ENDIF
        ELSEIF  (DDEC.EQ.3)  THEN
          N=(VBQLNG(DHEX(1)) - 24 ) / 16
          X1=ARRAY(2)
          Y1=ARRAY(3)
          X2=ARRAY(2)+ARRAY(2*N+2)
          Y2=ARRAY(3)+ARRAY(2*N+3)
          IF ( SFCFLG .EQ. 1 ) THEN
            X1=ARRAY(2)+ARRAY(2*N+2)
            Y1=ARRAY(3)+ARRAY(2*N+3)
            X2=ARRAY(2)
            Y2=ARRAY(3)
          ENDIF
        ELSEIF  (DDEC.EQ.5)  THEN
          X1=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5))
          Y1=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5))
          X2=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
          Y2=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
          IF ( SFCFLG .EQ. 1 ) THEN
            X1=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
            Y1=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            X2=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5))
            Y2=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5))
          ENDIF
        ENDIF
        IF  (I.EQ.1)  THEN
          IF((NUM.EQ.1).AND.                                            
     *      (DABS(X1-X2).LT.EPS).AND.                                   
     *      (DABS(Y1-Y2).LT.EPS))  GO TO  1100
          XS1=X1
          YS1=Y1
          XE1=X2
          YE1=Y2
          XS=X1
          YS=Y1
          XE=X2
          YE=Y2
          ENDPFG= 1
        ELSEIF  (I.EQ.2)  THEN
          IF ((DABS(XE1-X1).LT.EPS).AND.                                
     *            (DABS(YE1-Y1).LT.EPS))  THEN
            XSTART=XS1
            YSTART=YS1
            XS=XS1
            YS=YS1
            XE=X2
            YE=Y2
            STFLG =-1
            ENDPFG= 1
          ELSEIF ((DABS(XE1-X2).LT.EPS).AND.                            
     *            (DABS(YE1-Y2).LT.EPS))  THEN
            XSTART=XS1
            YSTART=YS1
            XS=XS1
            YS=YS1
            XE=X1
            YE=Y1
            STFLG =-1
            ENDPFG=-1
          ELSEIF  ((DABS(XS1-X1).LT.EPS).AND.                           
     *         (DABS(YS1-Y1).LT.EPS))  THEN
            XSTART=XE1
            YSTART=YE1
            XS=XE1
            YS=YE1
            XE=X2
            YE=Y2
            STFLG = 1
            ENDPFG= 1
          ELSEIF ((DABS(XS1-X2).LT.EPS).AND.                            
     *            (DABS(YS1-Y2).LT.EPS))  THEN
            XSTART=XE1
            YSTART=YE1
            XS=XE1
            YS=YE1
            XE=X1
            YE=Y1
            STFLG = 1
            ENDPFG=-1
          ELSE
            GO TO  8270
          ENDIF
        ELSE
          IF ((DABS(XE-X1).LT.EPS).AND.                                 
     *          (DABS(YE-Y1).LT.EPS))  THEN
            XE=X2
            YE=Y2
            ENDPFG= 1
          ELSEIF ((DABS(XE-X2).LT.EPS).AND.                             
     *            (DABS(YE-Y2).LT.EPS))  THEN
            XE=X1
            YE=Y1
            ENDPFG=-1
          ELSE
            GO TO  8270
          ENDIF
        ENDIF
 1100 CONTINUE
        IF  ((I.EQ.1).AND.(NUM.EQ.1))  THEN
          IF  (DDEC.EQ.4)  THEN
            DO  1200  J=1 ,DIVNUM+1
              CNT=CNT+1
              XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+(TH*(J-1)))
              YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+(TH*(J-1)))
              IF  (J.EQ.1)  THEN
                XSTART=XARRAY(CNT)
                YSTART=YARRAY(CNT)
              ENDIF
 1200 CONTINUE
          ELSEIF  (DDEC.EQ.3)  THEN
            CNT=(VBQLNG(DHEX(1))-8) / 16
            DO  1300  J=1 ,CNT
              IF  (J.EQ.1)  THEN
                XARRAY(J)=ARRAY(2)
                YARRAY(J)=ARRAY(3)
                XSTART   =ARRAY(2)
                YSTART   =ARRAY(3)
              ELSE
                XARRAY(J)=ARRAY(2)+ARRAY(2*J)
                YARRAY(J)=ARRAY(3)+ARRAY(2*J+1)
              ENDIF
 1300 CONTINUE
          ELSE
            GO TO  8270
          ENDIF
          GO TO  3100
        ELSEIF  (I.EQ.2)  THEN
          CNT=1
          XARRAY(CNT)=XSTART
          YARRAY(CNT)=YSTART
          XSPOLY     =XSTART
          YSPOLY     =YSTART
          CALL SPDGET (RSSTID(1) ,PRMNO ,ARRAY ,IRCD)
          IF  (IRCD.NE.0)  THEN
            MODE=2
            MODID2='SPDGET'
            GO TO  8100
          ENDIF
          IF  (FIGFLG.EQ.2)  THEN
            IF ( SFCFLG .EQ. 1 ) THEN
              ARRAY(2) = ARRAY(2)+ARRAY(4)*ARRAY(6)
              ARRAY(3) = ARRAY(3)+ARRAY(5)*ARRAY(6)
              ARRAY(4) = -ARRAY(4)
              ARRAY(5) = -ARRAY(5)
            ENDIF
            CNT=2
            IF  (STFLG.EQ.1)  THEN
              XARRAY(2)=ARRAY(2)
              YARRAY(2)=ARRAY(3)
            ELSE
              XARRAY(2)=ARRAY(2)+ARRAY(4)*ARRAY(6)
              YARRAY(2)=ARRAY(3)+ARRAY(5)*ARRAY(6)
            ENDIF
          ELSEIF  (FIGFLG.EQ.3)  THEN
            N=( VBQLNG(DHEX(1)) - 24 ) / 16
            DO 1310 I1 = 1, N
              ARRAY(2*I1+2) = ARRAY(2)+ARRAY(2*I1+2)
              ARRAY(2*I1+3) = ARRAY(3)+ARRAY(2*I1+3)
 1310       CONTINUE
            IF ( SFCFLG .EQ. 1 ) THEN
              I1 = 1
              J1 = N+1
 1320         CONTINUE
              IF ( I1 .LT. J1 ) THEN
                XSPOLY = ARRAY(I1*2)
                YSPOLY = ARRAY(I1*2+1)
                ARRAY(I1*2)   = ARRAY(J1*2)
                ARRAY(I1*2+1) = ARRAY(J1*2+1)
                ARRAY(J1*2)   = XSPOLY
                ARRAY(J1*2+1) = YSPOLY
                I1 = I1+1
                J1 = J1-1
                GO TO 1320
              ENDIF
            ENDIF
            IF  (N.EQ.1)  THEN
              CNT=CNT+1
              IF  (STFLG.EQ.1)  THEN
                  XARRAY(CNT)=ARRAY(2)
                  YARRAY(CNT)=ARRAY(3)
              ELSE
                  XARRAY(CNT)=ARRAY(4)
                  YARRAY(CNT)=ARRAY(5)
              ENDIF
            ELSE
              IF  (STFLG.EQ.1)  THEN
                STPNT =N
                ENDPNT=1
                STFLG =-1
              ELSE
                STPNT=2
                ENDPNT=N+1
                STFLG =1
              ENDIF
              DO  1400  J=STPNT ,ENDPNT ,STFLG
                CNT=CNT+1
                IF  (J.EQ.1)  THEN
                  XARRAY(CNT)=ARRAY(2)
                  YARRAY(CNT)=ARRAY(3)
                ELSE
                  XARRAY(CNT)=ARRAY(2*J)
                  YARRAY(CNT)=ARRAY(2*J+1)
                ENDIF
 1400 CONTINUE
            ENDIF
          ELSEIF  (FIGFLG.EQ.5)  THEN
            IF ( SFCFLG .EQ. 1 ) THEN
              XSPOLY = ARRAY(5)
              YSPOLY = ARRAY(6)
              ARRAY(5) = XSPOLY + YSPOLY
              IF ( ARRAY(5) .GT. 2.D0*PI ) THEN
                ARRAY(5) = ARRAY(5) - 2.D0*PI
              ELSEIF ( ARRAY(5) .LT. -2.D0*PI ) THEN
                ARRAY(5) = ARRAY(5) + 2.D0*PI
              ENDIF
              ARRAY(6) = -YSPOLY
            ENDIF
            IF  (DABS(DABS(ARRAY(6))-TH).LT.EPS)  THEN
              CNT=CNT+1
              IF  (STFLG.EQ.1)  THEN
                XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5))
                YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5))
              ELSE
                XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
                YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
              ENDIF
              IF  (CNT.GE.253)  THEN
                XSPOLY=XARRAY(CNT)
                YSPOLY=YARRAY(CNT)
                CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,        
     *                         SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                         DTCODE, IRCD )
                IF ( IRCD.NE.0 )  THEN
                   IF ( IRCD .EQ. 4 .AND. DTCODE .EQ. 1161 ) GO TO 8210
                   IF ( IRCD .EQ. 8 .AND.                               
     *                 (DTCODE.EQ.121 .OR. DTCODE.EQ.122 ) ) GO TO 8220
                   IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 ) GO TO 8240
                   MODID2 = 'SFCSPS'
                   MODE = 4
                   GO TO  8100
                ENDIF
                SETFLG = 1
                CNT=1
                XARRAY(CNT)=XSPOLY
                YARRAY(CNT)=YSPOLY
              ENDIF
            ELSE
              ARCNUM = IDINT(DABS(ARRAY(6))/TH) + 1
              IF  ((DABS(ARRAY(6))-(TH*(ARCNUM-1))).GT.EPS)             
     *                                                 ARCNUM=ARCNUM+1
              IF  (STFLG.EQ.1)  THEN
                STPNT=ARCNUM-1
                ENDPNT=1
                STFLG =-1
              ELSE
                STPNT =2
                ENDPNT=ARCNUM
                STFLG =1
              ENDIF
              DO  1500  J=STPNT ,ENDPNT ,STFLG
                CNT=CNT+1
                IF  (DABS(ARRAY(6)).LT.(TH*(J-1)))  THEN
                  XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)           
     *                                              +ARRAY(6))
                  YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)           
     *                                              +ARRAY(6))
                ELSE
                  IF ( ARRAY(6) .GT. 0.D0 )  THEN
                     XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)        
     *                                             +(TH*(J-1)))
                     YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)        
     *                                             +(TH*(J-1)))
                  ELSE
                     XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)        
     *                                             -(TH*(J-1)))
                     YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)        
     *                                             -(TH*(J-1)))
                  ENDIF
                ENDIF
                IF  (CNT.GE.253)  THEN
                  XSPOLY=XARRAY(CNT)
                  YSPOLY=YARRAY(CNT)
                  CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,      
     *                           SURF(SRFOFF+1), SFWK(SFWOFF+1),        
     *                           DTCODE, IRCD )
                  IF ( IRCD.NE.0 )  THEN
                     IF ( IRCD .EQ. 4 .AND.                             
     *                                    DTCODE .EQ. 1161 ) GO TO 8210
                     IF ( IRCD .EQ. 8 .AND.                             
     *                  (DTCODE.EQ.121 .OR. DTCODE.EQ.122) ) GO TO 8220
                     IF ( IRCD .EQ. 8 .AND.                             
     *                                    DTCODE .EQ. 1162 ) GO TO 8240
                     MODID2 = 'SFCSPS'
                     MODE = 4
                     GO TO  8100
                  ENDIF
                  SETFLG = 1
                  CNT=1
                  XARRAY(CNT)=XSPOLY
                  YARRAY(CNT)=YSPOLY
                ENDIF
 1500 CONTINUE
            ENDIF
          ENDIF
          CALL SPDGET (RSSTID(2) ,PRMNO ,ARRAY ,IRCD)
          IF  (IRCD.NE.0)  THEN
            MODE=2
            MODID2='SPDGET'
            GO TO  8100
          ENDIF
          DDEC = VBQTYP ( DHEX(1) )
        ENDIF
        IF ( I .EQ. 1 ) GO TO 3000
        IF  (DDEC.EQ.2)  THEN
          IF ( SFCFLG .EQ. 1 ) THEN
            ARRAY(2) = ARRAY(2)+ARRAY(4)*ARRAY(6)
            ARRAY(3) = ARRAY(3)+ARRAY(5)*ARRAY(6)
            ARRAY(4) = -ARRAY(4)
            ARRAY(5) = -ARRAY(5)
          ENDIF
          CNT=CNT+1
          IF  (ENDPFG.EQ.1)  THEN
            XARRAY(CNT)=ARRAY(2)+ARRAY(4)*ARRAY(6)
            YARRAY(CNT)=ARRAY(3)+ARRAY(5)*ARRAY(6)
          ELSE
            XARRAY(CNT)=ARRAY(2)
            YARRAY(CNT)=ARRAY(3)
          ENDIF
          IF  (CNT.GE.253)  THEN
            XSPOLY=XARRAY(CNT)
            YSPOLY=YARRAY(CNT)
            CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,            
     *                     SURF(SRFOFF+1), SFWK(SFWOFF+1),              
     *                     DTCODE, IRCD )
            IF ( IRCD.NE.0 )  THEN
               IF ( IRCD .EQ. 4 .AND. DTCODE .EQ. 1161 ) GO TO 8210
               IF ( IRCD .EQ. 8 .AND.                                   
     *             (DTCODE.EQ.121 .OR. DTCODE.EQ.122 ) ) GO TO 8220
               IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 ) GO TO 8240
               MODID2 = 'SFCSPS'
               MODE = 4
               GO TO  8100
            ENDIF
            SETFLG = 1
            CNT=1
            XARRAY(CNT)=XSPOLY
            YARRAY(CNT)=YSPOLY
          ENDIF
        ELSEIF  (DDEC.EQ.3)  THEN
          N=( VBQLNG(DHEX(1)) - 24 ) / 16
          DO 1510 I1 = 1, N
            ARRAY(2*I1+2) = ARRAY(2)+ARRAY(2*I1+2)
            ARRAY(2*I1+3) = ARRAY(3)+ARRAY(2*I1+3)
 1510     CONTINUE
          IF ( SFCFLG .EQ. 1 ) THEN
            I1 = 1
            J1 = N+1
 1520       CONTINUE
            IF ( I1 .LT. J1 ) THEN
              XSPOLY = ARRAY(I1*2)
              YSPOLY = ARRAY(I1*2+1)
              ARRAY(I1*2)   = ARRAY(J1*2)
              ARRAY(I1*2+1) = ARRAY(J1*2+1)
              ARRAY(J1*2)   = XSPOLY
              ARRAY(J1*2+1) = YSPOLY
              I1 = I1+1
              J1 = J1-1
              GO TO 1520
            ENDIF
          ENDIF
          IF  (N.EQ.1)  THEN
            CNT=CNT+1
            IF  (ENDPFG.EQ.1)  THEN
              XARRAY(CNT)=ARRAY(4)
              YARRAY(CNT)=ARRAY(5)
            ELSE
              XARRAY(CNT)=ARRAY(2)
              YARRAY(CNT)=ARRAY(3)
            ENDIF
          ELSE
            IF  (ENDPFG.EQ.1)  THEN
              STPNT=2
              ENDPNT=N+1
            ELSE
              STPNT =N
              ENDPNT=1
            ENDIF
            DO  1600  J=STPNT ,ENDPNT ,ENDPFG
              CNT=CNT+1
              IF  (J.EQ.1)  THEN
                XARRAY(CNT)=ARRAY(2)
                YARRAY(CNT)=ARRAY(3)
              ELSE
                XARRAY(CNT)=ARRAY(2*J)
                YARRAY(CNT)=ARRAY(2*J+1)
              ENDIF
              IF  (CNT.GE.253)  THEN
                XSPOLY=XARRAY(CNT)
                YSPOLY=YARRAY(CNT)
                CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,        
     *                         SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                         DTCODE, IRCD )
                IF ( IRCD.NE.0 )  THEN
                   IF ( IRCD .EQ. 4 .AND. DTCODE .EQ. 1161 ) GO TO 8210
                   IF ( IRCD .EQ. 8 .AND.                               
     *                 (DTCODE.EQ.121 .OR. DTCODE.EQ.122 ) ) GO TO 8220
                   IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 ) GO TO 8240
                   MODID2 = 'SFCSPS'
                   MODE = 4
                   GO TO  8100
                ENDIF
                SETFLG = 1
                CNT=1
                XARRAY(CNT)=XSPOLY
                YARRAY(CNT)=YSPOLY
              ENDIF
 1600 CONTINUE
          ENDIF
        ELSEIF  (DDEC.EQ.5)  THEN
          IF ( SFCFLG .EQ. 1 ) THEN
            XSPOLY = ARRAY(5)
            YSPOLY = ARRAY(6)
            ARRAY(5) = XSPOLY + YSPOLY
            IF ( ARRAY(5) .GT. 2.D0*PI ) THEN
              ARRAY(5) = ARRAY(5) - 2.D0*PI
            ELSEIF ( ARRAY(5) .LT. -2.D0*PI ) THEN
              ARRAY(5) = ARRAY(5) + 2.D0*PI
            ENDIF
            ARRAY(6) = -YSPOLY
          ENDIF
          IF  (DABS(DABS(ARRAY(6))-TH).LT.EPS)  THEN
            CNT=CNT+1
            IF  (ENDPFG.EQ.1)  THEN
              XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
              YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            ELSE
              XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5))
              YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5))
            ENDIF
            IF  (CNT.GE.253)  THEN
              XSPOLY=XARRAY(CNT)
              YSPOLY=YARRAY(CNT)
              CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,          
     *                       SURF(SRFOFF+1), SFWK(SFWOFF+1),            
     *                       DTCODE, IRCD )
              IF ( IRCD.NE.0 )  THEN
                 IF ( IRCD .EQ. 4 .AND. DTCODE .EQ. 1161 ) GO TO 8210
                 IF ( IRCD .EQ. 8 .AND.                                 
     *               (DTCODE.EQ.121 .OR. DTCODE.EQ.122 ) ) GO TO 8220
                 IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 ) GO TO 8240
                 MODID2 = 'SFCSPS'
                 MODE = 4
                 GO TO  8100
              ENDIF
              SETFLG = 1
              CNT=1
              XARRAY(CNT)=XSPOLY
              YARRAY(CNT)=YSPOLY
            ENDIF
          ELSE
            ARCNUM = IDINT(DABS(ARRAY(6))/TH) + 1
            IF  ((DABS(ARRAY(6))-(TH*(ARCNUM-1))).GT.EPS)               
     *                                               ARCNUM=ARCNUM+1
            IF  (ENDPFG.EQ.1)  THEN
              STPNT =2
              ENDPNT=ARCNUM
              ENDPFG=1
            ELSE
              STPNT=ARCNUM-1
              ENDPNT=1
              ENDPFG =-1
            ENDIF
            DO  1700  J=STPNT ,ENDPNT ,ENDPFG
              CNT=CNT+1
              IF  (DABS(ARRAY(6)).LE.(TH*(J-1)))  THEN
                XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)             
     *                                            +ARRAY(6))
                YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)             
     *                                            +ARRAY(6))
              ELSE
                IF ( ARRAY(6) .GT. 0.D0 )  THEN
                   XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)          
     *                                           +(TH*(J-1)))
                   YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)          
     *                                           +(TH*(J-1)))
                ELSE
                   XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)          
     *                                           -(TH*(J-1)))
                   YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)          
     *                                           -(TH*(J-1)))
                ENDIF
              ENDIF
              IF  (CNT.GE.253)  THEN
                XSPOLY=XARRAY(CNT)
                YSPOLY=YARRAY(CNT)
                CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,        
     *                         SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                         DTCODE, IRCD )
                IF ( IRCD.NE.0 )  THEN
                   IF ( IRCD .EQ. 4 .AND. DTCODE .EQ. 1161 ) GO TO 8210
                   IF ( IRCD .EQ. 8 .AND.                               
     *                 (DTCODE.EQ.121 .OR. DTCODE.EQ.122 ) ) GO TO 8220
                   IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 ) GO TO 8240
                   MODID2 = 'SFCSPS'
                   MODE = 4
                   GO TO  8100
                ENDIF
                SETFLG = 1
                CNT=1
                XARRAY(CNT)=XSPOLY
                YARRAY(CNT)=YSPOLY
              ENDIF
 1700 CONTINUE
          ENDIF
        ENDIF
 3000 CONTINUE
      IF  ((DABS(XS-XE).GE.EPS).OR.                                     
     *     (DABS(YS-YE).GE.EPS))  GO TO  8270
 3100 CONTINUE
      IF  ( CNT .GT. 1 )  THEN
        XARRAY(CNT)=XSTART
        YARRAY(CNT)=YSTART
        CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,                
     *                 SURF(SRFOFF+1), SFWK(SFWOFF+1),                  
     *                 DTCODE, IRCD )
        IF ( IRCD.NE.0 )  THEN
           IF ( IRCD .EQ. 4 .AND. DTCODE .EQ. 1161 ) GO TO 8210
           IF ( IRCD .EQ. 8 .AND.                                       
     *         (DTCODE.EQ.121 .OR. DTCODE.EQ.122 ) ) GO TO 8220
           IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 1162 ) GO TO 8240
           MODID2 = 'SFCSPS'
           MODE = 4
           GO TO  8100
        ENDIF
      ENDIF
      CALL  SFCEDS ( MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),            
     *               DTCODE, IRCD )
      CRTFLG=0
      IF  (IRCD.NE.0)  THEN
        IF(   (DTCODE .EQ. 134) .AND. (SETFLG .EQ. 0)                   
     *  .AND. (SFCFLG .EQ. 0)  ) THEN
          I = 1
          J = CNT
 3200     CONTINUE
          IF( I .LT. J ) THEN
            XSPOLY = XARRAY(I)
            YSPOLY = YARRAY(I)
            XARRAY(I) = XARRAY(J)
            YARRAY(I) = YARRAY(J)
            XARRAY(J) = XSPOLY
            YARRAY(J) = YSPOLY
            I = I + 1
            J = J - 1
            GO TO 3200
          ENDIF
          CALL  SFCRTS ( ENTTYP, ATRID, VISI, ORGFLG, ORG,              
     *                   MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),        
     *                   DTCODE, IRCD )
          IF ( IRCD .NE. 0 )  THEN
             IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 121 )  GO TO 8220
             MODE = 4
             MODID2 = 'SFCRTS'
             GO TO 8100
          ENDIF
          CRTFLG=1
          SFCFLG = 1
          GO TO 3100
        ELSEIF (   ( DTCODE .EQ. 134 ) .AND. ( SETFLG .EQ. 1 )          
     *       .AND. ( SFCFLG .EQ. 0 )  ) THEN
          SFCFLG = 1
          IF ( NUM .GT. 2 ) THEN
            DO 4000 I = 1, NUM
              RSSTID(I) = ENTIDS(NUM+1-I)
 4000       CONTINUE
          ENDIF
          GO TO 2000
        ENDIF
        IF( (IRCD .EQ. 8) .AND.                                         
     *      (DTCODE .GE. 121) .AND. (DTCODE .LE. 125) ) GO TO 8220
        IF( (IRCD .EQ.  8) .AND. (DTCODE .EQ. 133) )    GO TO 8240
        IF( (IRCD .EQ. 8) .AND.                                         
     *      (DTCODE .GE. 132) .AND. (DTCODE .LE. 135) ) GO TO 8260
        MODE=4
        MODID2='SFCEDS'
        GO TO  8100
      ENDIF
 5000 CONTINUE
      IF  (IMODE.EQ.5)  THEN
        MAXTBL(3) = 8
      ELSE
        MAXTBL(3) = 0
      ENDIF
      MAXTBL(4) = 1
      CALL  SFWSFS ( 1, OENTID, MAXTBL, PRTHT, SURF(SRFOFF+1),          
     *               SFWK(SFWOFF+1), PESADR, SURFNO, DTCODE, IRCD )
      IF ( IRCD .GT. 4 )  THEN
        IF( (IRCD .EQ. 8) .AND.                                         
     *      (DTCODE .GE. 121) .AND. (DTCODE .LE. 125) ) GO TO 8220
        IF( (IRCD .EQ.  8) .AND. (DTCODE .EQ. 133) )    GO TO 8240
        IF( (IRCD .EQ. 8) .AND.                                         
     *      (DTCODE .GE. 132) .AND. (DTCODE .LE. 135) ) GO TO 8260
        MODE=4
        MODID2='SFWSFS'
        GO TO  8100
      ENDIF
      SFSFLG = 1
      IF( IMODE .EQ. 1 ) THEN
        RKIND = 14
      ELSEIF( IMODE .EQ. 2 ) THEN
        RKIND = 4
      ELSEIF( IMODE .EQ. 3 ) THEN
        RKIND = 5
      ELSEIF( IMODE .EQ. 4 ) THEN
        RKIND = 15
      ELSEIF( IMODE .EQ. 5 ) THEN
        RKIND = 16
      ENDIF
      CALL  VQRAY ( N1, RKIND, LAYER, RAYNO, DTCODE, IRCD )
      IF( IRCD .NE. 0 ) THEN
        MODE=5
        MODID2='VQRAY '
        GO TO 8000
      ENDIF
      CALL  SEMRAY ( PESADR, N1, N1, RAYNO, IRCD )
      IF( IRCD .NE. 0 ) THEN
        MODID2='SEMRAY'
        CALL SCQERR( DTCODE )
        IF( ( IRCD .EQ. 12 ) .AND. ( DTCODE .EQ.1100 ) ) THEN
          MODE=0
          GO TO 8290
        ELSE
          MODE=2
          GO TO 8100
        ENDIF
      ENDIF
 6000 CONTINUE
      IF  (IMODE.EQ.5)  THEN
        DO  6100  J = 1 ,30
          CALL  VQRCHR ( J ,CHRATR ,DTCODE ,IRCD)
          IF  (IRCD.NE.0)  THEN
            IF  ((IRCD.EQ.8).AND.(DTCODE.EQ.2001))  GO TO  6100
            MODE=5
            MODID2='VQRCHR'
            GO TO  8100
          ENDIF
          GO TO  6200
 6100   CONTINUE
        GO TO  8220
 6200 CONTINUE
        ATRTB1(1) = SNGL( CHRATR(1) )
        ATRTB1(2) = SNGL( CHRATR(1) * CHRATR(2) )
        ATRTB1(3) = SNGL( CHRATR(1) * CHRATR(3) )
        ATRTB1(4) = 0.0
        ATRTB1(5) = 0.0
        ATRTB2(1)=ATRTBL(3)
        ATRTB2(2)=ATRTBL(1)
        CALL  SPSTXT  (ATRID ,ATRTB1 ,ATRTB2 ,FONT ,IRCD)
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SPSTXT'
          GO TO  8100
        ENDIF
        CALL  SSCRT2  (ENTTYP ,VISI ,DISP ,IRCD)
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SSCRT2'
          GO TO  8100
        ENDIF
        ACRTFG=1
        WRITE  (TEXTS,'(F8.3)')  PRTHT
        DO 6300 I = 1, 8
          IF( TEXTS(I:I) .NE. ' ' ) GO TO 6400
6300    CONTINUE
6400    CONTINUE
        WKTEXT(1:8) = TEXTS(I:8)
        TEXTS       = WKTEXT
        CALL  SPTXT2  (POS(1) ,POS(2) ,TEXTS ,N8 ,CODE ,ATRID ,TMODE    
     *                                                        ,IRCD)
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SPTXT2'
          GO TO  8100
        ENDIF
        CALL  SSEND2  (N0 ,N1 ,ISEGNO ,IRCD)
        ACRTFG=0
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SSEND2'
          GO TO  8100
        ENDIF
      ENDIF
      IF  (ERS.NE.0)  THEN
        CALL  VDPELM  (ENTIDS ,NUM ,1 ,DTCODE ,IRCD)
        IF  (IRCD.GT.4)  THEN
          MODE=5
          MODID2='VDPELM'
          IF  (DTCODE.LT.0)  GO TO  8000
          GO TO  8100
        ENDIF
      ENDIF
      CALL  VSSAVE  (SAVFLG ,DTCODE ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=5
        MODID2='VSSAVE'
        GO TO  8100
      ENDIF
      GO TO  9900
 8000 CONTINUE
      MSGNO=10999
      IRCODE(1)=8
      GO TO  8900
 8100 CONTINUE
      MSGNO=10998
      IRCODE(1)=8
      GO TO  8900
 8200 CONTINUE
      MSGNO=12604
      IRCODE(1)=8
      GO TO  8900
 8210 CONTINUE
      MSGNO=12611
      IRCODE(1)=4
      GO TO  8900
 8220 CONTINUE
      MSGNO=12612
      IRCODE(1)=8
      GO TO  8900
 8240 CONTINUE
      MSGNO=12614
      IRCODE(1)=4
      GO TO  8900
 8250 CONTINUE
      MODE=0
      MSGNO=12615
      IRCODE(1)=4
      GO TO  8900
 8260 CONTINUE
      MODE =0
      MSGNO=12616
      IRCODE(1)=4
      GO TO  8900
 8270 CONTINUE
      MODE = 0
      MSGNO=12602
      IRCODE(1)=4
      GO TO  8900
 8280 CONTINUE
      MODE = 0
      MSGNO=12617
      IRCODE(1)=4
      GO TO  8900
 8290 CONTINUE
      MSGNO = 17706
      IRCODE(1) = 4
      GO TO 8900
 8900 CONTINUE
      CALL  VBMSG (MODE ,MSGNO ,INSMSG ,N0 ,MODID1 ,MODID2 ,IRCD ,RCD)
      IF  (ACRTFG.EQ.1)  THEN
        CALL  SSEND2  (N0 ,N1 ,ISEGNO ,IRCD)
      ENDIF
      IF  (CRTFLG.EQ.1)  THEN
        CALL  SFCEDS ( MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                 DTCODE, IRCD )
      ENDIF
      IF  (SFSFLG.EQ.1)  THEN
        CALL  SEMDLT ( PESADR, N1, N1, N0, IRCD )
      ENDIF
 9900 CONTINUE
      RETURN
      END
      SUBROUTINE PCDF20 (IMODE ,ENTIDS ,NUM ,DIVNUM ,ERS ,PRTHT ,LAYER  
     *                  ,POS ,CATOFG ,PESADR ,IRCODE)
      INTEGER*4  IMODE
      INTEGER*4  ENTIDS(*)
      INTEGER*4  NUM
      INTEGER*4  DIVNUM
      INTEGER*4  ERS
      INTEGER*4  LAYER
      INTEGER*4  IRCODE(2)
      INTEGER*4  ENTCLS
      INTEGER*4  INFARY(16)
      REAL*8  PRTHT
      REAL*8  POS(2)
      INTEGER*4  IRCD
      INTEGER*4  N0
      INTEGER*4  I1
      INTEGER*4  J1
      INTEGER*4  RCD
      INTEGER*4  ATRID
      INTEGER*4  I
      INTEGER*4  ATRTBL(4)
      INTEGER*4  IDNO
      INTEGER*4  ENTTYP
      INTEGER*4  DTCODE
      INTEGER*4  CLTID(5)
      INTEGER*4  TYPID(5)
      INTEGER*4  DHEX(2)
      INTEGER*4  DDEC
      INTEGER*4  CNT
      INTEGER*4  FIGFLG
      INTEGER*4  INC
      INTEGER*4  J
      INTEGER*4  OENTID
      INTEGER*4  ORGFLG
      INTEGER*4  CRTFLG
      INTEGER*4  MODE
      INTEGER*4  N8
      INTEGER*4  VISI
      INTEGER*4  DISP
      INTEGER*4  TMODE
      INTEGER*4  ISEGNO
      INTEGER*4  N1
      INTEGER*4  SAVFLG
      INTEGER*4  ATRTB2(2)
      INTEGER*4  PRMNO
      INTEGER*4  CODE
      INTEGER*4  ACRTFG
      INTEGER*4  IATRHD(4)
      INTEGER*4  RSSTID(255)
      INTEGER*4  STFLG
      INTEGER*4  ENDPFG
      INTEGER*4  FONT
      INTEGER*4  PESADR
      INTEGER*4  ARCNUM
      INTEGER*4  N
      INTEGER*4  STPNT
      INTEGER*4  ENDPNT
      INTEGER*4  SETFLG
      INTEGER*4  SFCFLG
      INTEGER*4  CATOFG
      REAL*8  ARRAY(512)
      REAL*8  XARRAY(256)
      REAL*8  YARRAY(256)
      REAL*8  CHRATR(6)
      REAL*8  XE
      REAL*8  YE
      REAL*8  TH
      REAL*8  XSTART
      REAL*8  YSTART
      REAL*8  ORG(2)
      REAL*8  DATRHD
      REAL*8  TH1
      REAL*8  TH2
      REAL*8  XS1
      REAL*8  YS1
      REAL*8  XE1
      REAL*8  YE1
      REAL*8  X1
      REAL*8  Y1
      REAL*8  EPS
      REAL*8  XSPOLY
      REAL*8  YSPOLY
      REAL*8  X2
      REAL*8  Y2
      REAL*8  XS
      REAL*8  YS
      REAL*8  LNGX
      REAL*8  LNGY
      REAL*8  VCTX
      REAL*8  VCTY
      REAL*4  ATRTB1(6)
      CHARACTER*6  MODID1
      CHARACTER*6  MODID2
      CHARACTER*4  INSMSG
      CHARACTER*8  TEXTS
      CHARACTER*8  WKTEXT
      CHARACTER*8  TEXTW
      INTEGER*4  SURFNO
      INTEGER*4  SURF(1)
      INTEGER*4  SFWK(1)
      INTEGER*4  SIZE
      INTEGER*4  MAXTBL(4)
      INTEGER*4  SRFOFF
      INTEGER*4  SFWOFF
      INTEGER*4  DIRECT
      REAL*8  CORD(2,2)
      INTEGER*4  RAYNO
      INTEGER*4  SFSFLG
      INTEGER*4  RKIND
      INTEGER*4  VBQTYP
      INTEGER*4  VBQLNG
      EXTERNAL   VBQTYP, VBQLNG
      EQUIVALENCE      ( SURF, SFWK )
      EQUIVALENCE        (DHEX ,ARRAY)
      REAL*8  PI
      REAL*8  DEGRAD
      REAL*8  RADDEG
      PARAMETER( PI=3.1415926535897932D0 )
      PARAMETER( DEGRAD=1.7453292519943296D-2 )
      PARAMETER( RADDEG=5.7295779513082321D1 )
      DATA N0/0/
      DATA N1/1/
      DATA N8/8/
      DATA EPS/1.0D-6/
      DATA MODID1/'PCDF20'/
      DATA ATRID/0/
      DATA CLTID/37,3,4,39,40/
      DATA TYPID/24,23,23,23,24/
      DATA ORGFLG/0/
      DATA INC/1/
      DATA OENTID/0/
      DATA VISI/1/
      DATA DISP/1/
      DATA PRMNO/1/
      DATA TMODE/1/
      DATA CODE/0/
      DATA SAVFLG/1/
      XSTART=0.0D0
      YSTART=0.0D0
      CNT=0
      MODE=0
      IRCODE(1)=0
      IRCODE(2)=0
      CRTFLG   =0
      ACRTFG   =0
      SETFLG   =0
      SFCFLG   =0
      SFSFLG   =0
      MODID2=' '
      IF ( NUM .GT. 255 )  THEN
        IRCODE(1)=8
        IRCODE(2)=12604
        GO TO 8900
      ENDIF
      CALL VQCLAS ( 272, 0, ENTCLS, DTCODE, IRCD )
      IF  (IRCD.NE.0)  THEN
        MODE =5
        MODID2='VQCLAS'
        GO TO  8000
      ENDIF
      DO 100 I = 1, NUM
        CALL SSREAD ( ENTIDS(I), INFARY )
        IF ( INFARY(5) .NE. ENTCLS )  THEN
          IRCODE(1)= 12
          IRCODE(2)= 2
          GO TO 8900
        ENDIF
        RSSTID(I) = ENTIDS(I)
  100 CONTINUE
      IF  (IMODE.NE.1)  THEN
        TH = 2*PI / DIVNUM
      ENDIF
      CALL  VHQWKA ( SURF, 4, 4, SRFOFF, SIZE )
      MAXTBL(1) = SIZE/7*2
      SFWOFF    = SRFOFF + MAXTBL(1)
      MAXTBL(2) = SIZE - MAXTBL(1)
      IDNO = CLTID(IMODE)
      CALL  VQCLT  (IDNO ,LAYER ,ATRTBL ,DTCODE ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=5
        MODID2='VQCLT'
        GO TO  8000
      ENDIF
      CALL  SFSOLA  (ATRID ,ATRTBL ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=2
        MODID2='SFSOLA'
        GO TO  8000
      ENDIF
      IATRHD(1)=0
      IATRHD(2)=2
      IATRHD(3)=0
      IATRHD(4)=0
      DATRHD   =3.0D0
      CALL  SFSHDA  (ATRID ,IATRHD ,DATRHD ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=4
        MODID2='SFSHDA'
        GO TO  8000
      ENDIF
      CALL  VQTYPE  (TYPID(IMODE) ,ENTTYP ,DTCODE ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=5
        MODID2='VQTYPE'
        GO TO  8000
      ENDIF
      IF  (IMODE.EQ.1)  THEN
  200    CONTINUE
         IF ( NUM .GT. 1 )  THEN
            CALL  SPDGET ( RSSTID(1), PRMNO, ARRAY, IRCD )
            IF ( IRCD .NE. 0 )  THEN
               MODE = 2
               MODID2 = 'SPDGET'
               GO TO 8000
            ENDIF
            DDEC = VBQTYP(DHEX(1))
            IF ( DDEC .EQ. 2 )  THEN
               X1 = ARRAY(2)
               Y1 = ARRAY(3)
               X2 = ARRAY(2) + ARRAY(4)*ARRAY(6)
               Y2 = ARRAY(3) + ARRAY(5)*ARRAY(6)
            ELSEIF ( DDEC .EQ. 3 )  THEN
               N  = (VBQLNG(DHEX(1)) - 24 ) / 16
               X1 = ARRAY(2)
               Y1 = ARRAY(3)
               X2 = ARRAY(2) + ARRAY(2*N+2)
               Y2 = ARRAY(3) + ARRAY(2*N+3)
            ELSEIF ( DDEC .EQ. 5 )  THEN
               X1 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5))
               Y1 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5))
               X2 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
               Y2 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            ELSE
               IF ( DDEC .EQ. 4. OR. DDEC .EQ. 10 )  THEN
                 IRCODE(1)=8
                 IRCODE(2)=12615
                 GO TO 8900
               ELSE
                 IRCODE(1)=8
                 IRCODE(2)=12617
                 GO TO 8900
               ENDIF
            ENDIF
            CALL  SPDGET ( RSSTID(2), PRMNO, ARRAY, IRCD )
            IF ( IRCD .NE. 0 )  THEN
               MODE = 2
               MODID2 = 'SPDGET'
               GO TO 8000
            ENDIF
            DDEC = VBQTYP(DHEX(1))
            IF ( DDEC .EQ. 2 )  THEN
               XS1 = ARRAY(2)
               YS1 = ARRAY(3)
               XE1 = ARRAY(2) + ARRAY(4)*ARRAY(6)
               YE1 = ARRAY(3) + ARRAY(5)*ARRAY(6)
            ELSEIF ( DDEC .EQ. 3 )  THEN
               N  = (VBQLNG(DHEX(1)) - 24 ) / 16
               XS1 = ARRAY(2)
               YS1 = ARRAY(3)
               XE1 = ARRAY(2) + ARRAY(2*N+2)
               YE1 = ARRAY(3) + ARRAY(2*N+3)
            ELSEIF ( DDEC .EQ. 5 )  THEN
               XS1 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5))
               YS1 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5))
               XE1 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
               YE1 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            ELSE
               IF ( DDEC .EQ. 4. OR. DDEC .EQ. 10 )  THEN
                 IRCODE(1)=8
                 IRCODE(2)=12615
                 GO TO 8900
               ELSE
                 IRCODE(1)=8
                 IRCODE(2)=12617
                 GO TO 8900
               ENDIF
            ENDIF
            IF ( (DABS(X2-XS1) .LT. EPS .AND. DABS(Y2-YS1) .LT. EPS)    
     *       .OR. (DABS(X2-XE1) .LT. EPS .AND. DABS(Y2-YE1) .LT. EPS) ) 
     *                                                     THEN
               IF ( NUM .GT. 2 .OR. SFCFLG .EQ. 0 )  THEN
                  CORD(1,1) = X1
                  CORD(2,1) = Y1
                  CORD(1,2) = X1
                  CORD(2,2) = Y1
               ELSE
                  CORD(1,1) = X2
                  CORD(2,1) = Y2
                  CORD(1,2) = X2
                  CORD(2,2) = Y2
               ENDIF
            ELSEIF ((DABS(X1-XS1) .LT. EPS .AND. DABS(Y1-YS1) .LT. EPS) 
     *         .OR. (DABS(X1-XE1) .LT. EPS .AND. DABS(Y1-YE1) .LT. EPS))
     *                                                     THEN
               CORD(1,1) = X2
               CORD(2,1) = Y2
               CORD(1,2) = X2
               CORD(2,2) = Y2
            ELSE
               IRCODE(1)=8
               IRCODE(2)=12614
               GO TO 8900
            ENDIF
         ENDIF
         CALL  SFCRTS ( ENTTYP, ATRID, VISI, ORGFLG, ORG,               
     *                  MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),         
     *                  DTCODE, IRCD )
         IF ( IRCD .NE. 0 )  THEN
           MODID2 = 'SFCRTS'
           GO TO 8000
         ENDIF
         CRTFLG = 1
        DO  500  I=1 ,NUM
          CALL  SPDGET  (RSSTID(I) ,PRMNO ,ARRAY ,IRCD)
          IF  (IRCD.NE.0)  THEN
            MODE=2
            MODID2='SPDGET'
            GO TO  8000
          ENDIF
          DDEC = VBQTYP(DHEX(1))
          IF  (DDEC.EQ.4)  THEN
            IF ( NUM .GT. 1 )  THEN
              IRCODE(1)=8
              IRCODE(2)=12615
              GO TO 8900
            ENDIF
            DO  400  J=1 ,2
              IF  (J.EQ.1)  THEN
                TH1=0.0D0
                TH2=PI
              ELSE
                TH1=PI
                TH2=PI
              ENDIF
              CALL  SFCSAS (ARRAY(2), ARRAY(3), ARRAY(4), TH1, TH2,     
     *                      MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),     
     *                      DTCODE, IRCD )
              IF ( IRCD.NE.0 )  THEN
                MODID2 = 'SFCSAS'
                GO TO  8000
              ENDIF
  400   CONTINUE
          ELSEIF (DDEC.EQ.10)  THEN
            IF ( NUM .GT. 1 )  THEN
              IRCODE(1)=8
              IRCODE(2)=12615
              GO TO 8900
            ENDIF
            VCTX = ARRAY(4)
            VCTY = ARRAY(5)
            LNGX = ARRAY(6)
            LNGY = ARRAY(7)
            ARRAY(4)  = LNGX*VCTX             + ARRAY(2)
            ARRAY(5)  = LNGX*VCTY             + ARRAY(3)
            ARRAY(6)  = LNGX*VCTX - LNGY*VCTY + ARRAY(2)
            ARRAY(7)  = LNGX*VCTY + LNGY*VCTX + ARRAY(3)
            ARRAY(8)  = - LNGY*VCTY           + ARRAY(2)
            ARRAY(9)  =   LNGY*VCTX           + ARRAY(3)
            ARRAY(10) = 0.0D0                 + ARRAY(2)
            ARRAY(11) = 0.0D0                 + ARRAY(3)
            CALL  SFCSPS ( ARRAY(2), ARRAY(3), 5, 2, MAXTBL,            
     *                     SURF(SRFOFF+1), SFWK(SFWOFF+1),              
     *                     DTCODE, IRCD )
            IF ( IRCD.NE.0 )  THEN
              CALL SFQERR( DTCODE )
              MODID2 = 'SFCSPS'
              IF( IRCD .EQ. 4 )  THEN
                IF( DTCODE .EQ. 1161 )  THEN
                  IRCODE(1) = 8
                  IRCODE(2) = 12611
                  GO TO 8900
                ELSE
                  GO TO 8000
                ENDIF
              ELSE
                GO TO 8000
              ENDIF
            ENDIF
          ELSE
            IF ( DDEC .EQ. 2 )  THEN
               X1 = ARRAY(2)
               Y1 = ARRAY(3)
               X2 = ARRAY(2) + ARRAY(4)*ARRAY(6)
               Y2 = ARRAY(3) + ARRAY(5)*ARRAY(6)
            ELSEIF ( DDEC .EQ. 3 )  THEN
               N  = (VBQLNG(DHEX(1)) - 24 ) / 16
               X1 = ARRAY(2)
               Y1 = ARRAY(3)
               X2 = ARRAY(2) + ARRAY(2*N+2)
               Y2 = ARRAY(3) + ARRAY(2*N+3)
            ELSEIF ( DDEC .EQ. 5 )  THEN
               X1 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5))
               Y1 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5))
               X2 = ARRAY(2) + ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
               Y2 = ARRAY(3) + ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            ELSE
               IF ( DDEC .EQ. 4. OR. DDEC .EQ. 10 )  THEN
                 IRCODE(1)=8
                 IRCODE(2)=12615
                 GO TO 8900
               ELSE
                 IRCODE(1)=8
                 IRCODE(2)=12617
                 GO TO 8900
               ENDIF
            ENDIF
            DIRECT = 0
            IF ( NUM .EQ. 1 )  THEN
               IF ( SFCFLG .EQ. 1 )  THEN
                  DIRECT = 1
               ENDIF
            ELSE
               IF ( DABS(X1-CORD(1,2)) .LT. EPS .AND.                   
     *              DABS(Y1-CORD(2,2)) .LT. EPS )  THEN
                  CORD(1,2) = X2
                  CORD(2,2) = Y2
               ELSEIF ( DABS(X2-CORD(1,2)) .LT. EPS .AND.               
     *                  DABS(Y2-CORD(2,2)) .LT. EPS ) THEN
                  CORD(1,2) = X1
                  CORD(2,2) = Y1
                  DIRECT = 1
               ELSE
               IRCODE(1)=8
               IRCODE(2)=12614
               GO TO 8900
               ENDIF
            ENDIF
            IF ( DDEC .EQ. 5 )  THEN
               IF ( DIRECT .EQ. 1 )  THEN
                  TH1 = ARRAY(5)
                  TH2 = ARRAY(6)
                  ARRAY(5) = TH1 + TH2
                  IF ( ARRAY(5) .GT. 2.D0*PI )  THEN
                     ARRAY(5) = ARRAY(5) - 2.D0*PI
                  ELSEIF ( ARRAY(5) .LT. -2.D0*PI )  THEN
                     ARRAY(5) = ARRAY(5) + 2.D0*PI
                  ENDIF
                  ARRAY(6) = -TH2
               ENDIF
               CALL  SFCSAS ( ARRAY(2), ARRAY(3), ARRAY(4),             
     *                        ARRAY(5), ARRAY(6),                       
     *                        MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),   
     *                        DTCODE, IRCD )
               IF ( IRCD.NE.0 )  THEN
                 MODID2 = 'SFCSAS'
                 GO TO 8000
               ENDIF
            ELSE
               IF ( DDEC .EQ. 2 )  THEN
                  N = 1
                  ARRAY(4) = ARRAY(2) + ARRAY(4)*ARRAY(6)
                  ARRAY(5) = ARRAY(3) + ARRAY(5)*ARRAY(6)
               ELSE
                  N  = (VBQLNG(DHEX(1)) - 24 ) / 16
                  DO 410 J = 1, N
                     ARRAY(2*J+2) = ARRAY(2) + ARRAY(2*J+2)
                     ARRAY(2*J+3) = ARRAY(3) + ARRAY(2*J+3)
  410             CONTINUE
               ENDIF
               N = N + 1
               IF ( DIRECT .EQ. 1 )  THEN
                  I1 = 1
                  J1 = N
  420             CONTINUE
                  IF ( I1 .LT. J1 )  THEN
                      X1 = ARRAY(I1*2)
                      Y1 = ARRAY(I1*2+1)
                      ARRAY(I1*2)   = ARRAY(J1*2)
                      ARRAY(I1*2+1) = ARRAY(J1*2+1)
                      ARRAY(J1*2)   = X1
                      ARRAY(J1*2+1) = Y1
                      I1 = I1 + 1
                      J1 = J1 - 1
                      GO TO 420
                   ENDIF
               ENDIF
               CALL  SFCSPS ( ARRAY(2), ARRAY(3), N, 2, MAXTBL,         
     *                        SURF(SRFOFF+1), SFWK(SFWOFF+1),           
     *                              DTCODE, IRCD )
               IF ( IRCD.NE.0 )  THEN
                 CALL SFQERR( DTCODE )
                 MODID2 = 'SFCSPS'
                 IF( IRCD .EQ. 4 )  THEN
                   IF( DTCODE .EQ. 1161 )  THEN
                     IRCODE(1) = 8
                     IRCODE(2) = 12611
                     GO TO 8900
                   ELSE
                     GO TO 8000
                   ENDIF
                 ELSE
                   GO TO 8000
                 ENDIF
               ENDIF
            ENDIF
          ENDIF
  500   CONTINUE
        CALL  SFCEDS ( MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                 DTCODE, IRCD )
        CRTFLG = 0
        IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 134 .AND. SFCFLG .EQ. 0 )    
     *                                                             THEN
          IF ( NUM .GT. 2 ) THEN
            DO 600 I = 1, NUM
              RSSTID(I) = ENTIDS(NUM+1-I)
  600       CONTINUE
          ENDIF
          SFCFLG = 1
          GO TO 200
        ENDIF
        IF ( IRCD.NE.0 )  THEN
          MODID2 = 'SFCEDS'
          GO TO 8000
        ENDIF
        GO TO 5000
      ENDIF
      CALL  SPDGET  (RSSTID(1) ,PRMNO ,ARRAY ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=2
        MODID2='SPDGET'
        GO TO  8000
      ENDIF
      DDEC = VBQTYP(DHEX(1))
      IF  ((NUM.EQ.1).AND.(DDEC.EQ.10))  THEN
         CALL  SFCRTS ( ENTTYP, ATRID, VISI, ORGFLG, ORG,               
     *                  MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),         
     *                  DTCODE, IRCD )
         IF ( IRCD.NE.0 )  THEN
           MODID2 = 'SFCRTS'
           GO TO 8000
         ENDIF
         CRTFLG = 1
         VCTX = ARRAY(4)
         VCTY = ARRAY(5)
         LNGX = ARRAY(6)
         LNGY = ARRAY(7)
         ARRAY(4)  = LNGX*VCTX             + ARRAY(2)
         ARRAY(5)  = LNGX*VCTY             + ARRAY(3)
         ARRAY(6)  = LNGX*VCTX - LNGY*VCTY + ARRAY(2)
         ARRAY(7)  = LNGX*VCTY + LNGY*VCTX + ARRAY(3)
         ARRAY(8)  = - LNGY*VCTY           + ARRAY(2)
         ARRAY(9)  =   LNGY*VCTX           + ARRAY(3)
         ARRAY(10) = 0.0D0                 + ARRAY(2)
         ARRAY(11) = 0.0D0                 + ARRAY(3)
         CALL  SFCSPS ( ARRAY(2), ARRAY(3), 5, 2, MAXTBL,               
     *                  SURF(SRFOFF+1), SFWK(SFWOFF+1),                 
     *                  DTCODE, IRCD )
         IF ( IRCD.NE.0 )  THEN
           CALL SFQERR( DTCODE )
           MODID2 = 'SFCSPS'
           IF( IRCD .EQ. 4 )  THEN
             IF( DTCODE .EQ. 1161 )  THEN
               IRCODE(1) = 8
               IRCODE(2) = 12611
               GO TO 8900
             ELSE
               GO TO 8000
             ENDIF
           ELSE
             GO TO 8000
           ENDIF
         ENDIF
         CALL  SFCEDS ( MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),         
     *                  DTCODE, IRCD )
         CRTFLG = 0
         IF ( IRCD .EQ. 8 .AND. DTCODE .EQ. 134 .AND.                   
     *        CATOFG .EQ. 2 )                               GO TO 700
         IF ( IRCD.NE.0 )  THEN
           MODID2 = 'SFCEDS'
           GO TO 8000
         ENDIF
  700    CONTINUE
         GO TO 5000
      ENDIF
 2000 CONTINUE
      CALL  SFCRTS ( ENTTYP, ATRID, VISI, ORGFLG, ORG,                  
     *               MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),            
     *               DTCODE, IRCD )
      IF ( IRCD.NE.0 )  THEN
        MODID2 = 'SFCRTS'
        GO TO 8000
      ENDIF
      CRTFLG=1
      DO  3000  I=1 ,NUM
        CALL  SPDGET  (RSSTID(I) ,PRMNO ,ARRAY ,IRCD)
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SPDGET'
          GO TO  8000
        ENDIF
        DDEC = VBQTYP(DHEX(1))
        IF  (I.EQ.1)  FIGFLG=DDEC
        IF  ((NUM.GT.1).AND.((DDEC.EQ.4).OR.(DDEC.EQ.10)))  THEN
          IRCODE(1)=8
          IRCODE(2)=12615
          GO TO 8900
        ENDIF
        IF  (DDEC.EQ.4)  GO TO  1100
        IF  (DDEC.EQ.2)  THEN
          X1=ARRAY(2)
          Y1=ARRAY(3)
          X2=ARRAY(2)+ARRAY(4)*ARRAY(6)
          Y2=ARRAY(3)+ARRAY(5)*ARRAY(6)
          IF ( SFCFLG .EQ. 1 ) THEN
            X1=ARRAY(2)+ARRAY(4)*ARRAY(6)
            Y1=ARRAY(3)+ARRAY(5)*ARRAY(6)
            X2=ARRAY(2)
            Y2=ARRAY(3)
          ENDIF
        ELSEIF  (DDEC.EQ.3)  THEN
          N=(VBQLNG(DHEX(1)) - 24 ) / 16
          X1=ARRAY(2)
          Y1=ARRAY(3)
          X2=ARRAY(2)+ARRAY(2*N+2)
          Y2=ARRAY(3)+ARRAY(2*N+3)
          IF ( SFCFLG .EQ. 1 ) THEN
            X1=ARRAY(2)+ARRAY(2*N+2)
            Y1=ARRAY(3)+ARRAY(2*N+3)
            X2=ARRAY(2)
            Y2=ARRAY(3)
          ENDIF
        ELSEIF  (DDEC.EQ.5)  THEN
          X1=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5))
          Y1=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5))
          X2=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
          Y2=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
          IF ( SFCFLG .EQ. 1 ) THEN
            X1=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
            Y1=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            X2=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5))
            Y2=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5))
          ENDIF
        ENDIF
        IF  (I.EQ.1)  THEN
          IF((NUM.EQ.1).AND.                                            
     *      (DABS(X1-X2).LT.EPS).AND.                                   
     *      (DABS(Y1-Y2).LT.EPS))  GO TO  1100
          XS1=X1
          YS1=Y1
          XE1=X2
          YE1=Y2
          XS=X1
          YS=Y1
          XE=X2
          YE=Y2
          ENDPFG= 1
        ELSEIF  (I.EQ.2)  THEN
          IF ((DABS(XE1-X1).LT.EPS).AND.                                
     *            (DABS(YE1-Y1).LT.EPS))  THEN
            XSTART=XS1
            YSTART=YS1
            XS=XS1
            YS=YS1
            XE=X2
            YE=Y2
            STFLG =-1
            ENDPFG= 1
          ELSEIF ((DABS(XE1-X2).LT.EPS).AND.                            
     *            (DABS(YE1-Y2).LT.EPS))  THEN
            XSTART=XS1
            YSTART=YS1
            XS=XS1
            YS=YS1
            XE=X1
            YE=Y1
            STFLG =-1
            ENDPFG=-1
          ELSEIF  ((DABS(XS1-X1).LT.EPS).AND.                           
     *         (DABS(YS1-Y1).LT.EPS))  THEN
            XSTART=XE1
            YSTART=YE1
            XS=XE1
            YS=YE1
            XE=X2
            YE=Y2
            STFLG = 1
            ENDPFG= 1
          ELSEIF ((DABS(XS1-X2).LT.EPS).AND.                            
     *            (DABS(YS1-Y2).LT.EPS))  THEN
            XSTART=XE1
            YSTART=YE1
            XS=XE1
            YS=YE1
            XE=X1
            YE=Y1
            STFLG = 1
            ENDPFG=-1
          ELSE
            IRCODE(1)=8
            IRCODE(2)=12602
            GO TO  8900
          ENDIF
        ELSE
          IF ((DABS(XE-X1).LT.EPS).AND.                                 
     *          (DABS(YE-Y1).LT.EPS))  THEN
            XE=X2
            YE=Y2
            ENDPFG= 1
          ELSEIF ((DABS(XE-X2).LT.EPS).AND.                             
     *            (DABS(YE-Y2).LT.EPS))  THEN
            XE=X1
            YE=Y1
            ENDPFG=-1
          ELSE
            IRCODE(1)=8
            IRCODE(2)=12602
            GO TO  8900
          ENDIF
        ENDIF
 1100 CONTINUE
        IF  ((I.EQ.1).AND.(NUM.EQ.1))  THEN
          IF  (DDEC.EQ.4)  THEN
            DO  1200  J=1 ,DIVNUM+1
              CNT=CNT+1
              XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+(TH*(J-1)))
              YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+(TH*(J-1)))
              IF  (J.EQ.1)  THEN
                XSTART=XARRAY(CNT)
                YSTART=YARRAY(CNT)
              ENDIF
 1200 CONTINUE
          ELSEIF  (DDEC.EQ.3)  THEN
            CNT=(VBQLNG(DHEX(1))-8) / 16
            DO  1300  J=1 ,CNT
              IF  (J.EQ.1)  THEN
                XARRAY(J)=ARRAY(2)
                YARRAY(J)=ARRAY(3)
                XSTART   =ARRAY(2)
                YSTART   =ARRAY(3)
              ELSE
                XARRAY(J)=ARRAY(2)+ARRAY(2*J)
                YARRAY(J)=ARRAY(3)+ARRAY(2*J+1)
              ENDIF
 1300 CONTINUE
          ELSE
            IRCODE(1)=8
            IRCODE(2)=12602
            GO TO  8900
          ENDIF
          GO TO  3100
        ELSEIF  (I.EQ.2)  THEN
          CNT=1
          XARRAY(CNT)=XSTART
          YARRAY(CNT)=YSTART
          XSPOLY     =XSTART
          YSPOLY     =YSTART
          CALL SPDGET (RSSTID(1) ,PRMNO ,ARRAY ,IRCD)
          IF  (IRCD.NE.0)  THEN
            MODE=2
            MODID2='SPDGET'
            GO TO  8000
          ENDIF
          IF  (FIGFLG.EQ.2)  THEN
            IF ( SFCFLG .EQ. 1 ) THEN
              ARRAY(2) = ARRAY(2)+ARRAY(4)*ARRAY(6)
              ARRAY(3) = ARRAY(3)+ARRAY(5)*ARRAY(6)
              ARRAY(4) = -ARRAY(4)
              ARRAY(5) = -ARRAY(5)
            ENDIF
            CNT=2
            IF  (STFLG.EQ.1)  THEN
              XARRAY(2)=ARRAY(2)
              YARRAY(2)=ARRAY(3)
            ELSE
              XARRAY(2)=ARRAY(2)+ARRAY(4)*ARRAY(6)
              YARRAY(2)=ARRAY(3)+ARRAY(5)*ARRAY(6)
            ENDIF
          ELSEIF  (FIGFLG.EQ.3)  THEN
            N=( VBQLNG(DHEX(1)) - 24 ) / 16
            DO 1310 I1 = 1, N
              ARRAY(2*I1+2) = ARRAY(2)+ARRAY(2*I1+2)
              ARRAY(2*I1+3) = ARRAY(3)+ARRAY(2*I1+3)
 1310       CONTINUE
            IF ( SFCFLG .EQ. 1 ) THEN
              I1 = 1
              J1 = N+1
 1320         CONTINUE
              IF ( I1 .LT. J1 ) THEN
                XSPOLY = ARRAY(I1*2)
                YSPOLY = ARRAY(I1*2+1)
                ARRAY(I1*2)   = ARRAY(J1*2)
                ARRAY(I1*2+1) = ARRAY(J1*2+1)
                ARRAY(J1*2)   = XSPOLY
                ARRAY(J1*2+1) = YSPOLY
                I1 = I1+1
                J1 = J1-1
                GO TO 1320
              ENDIF
            ENDIF
            IF  (N.EQ.1)  THEN
              CNT=CNT+1
              IF  (STFLG.EQ.1)  THEN
                  XARRAY(CNT)=ARRAY(2)
                  YARRAY(CNT)=ARRAY(3)
              ELSE
                  XARRAY(CNT)=ARRAY(4)
                  YARRAY(CNT)=ARRAY(5)
              ENDIF
            ELSE
              IF  (STFLG.EQ.1)  THEN
                STPNT =N
                ENDPNT=1
                STFLG =-1
              ELSE
                STPNT=2
                ENDPNT=N+1
                STFLG =1
              ENDIF
              DO  1400  J=STPNT ,ENDPNT ,STFLG
                CNT=CNT+1
                IF  (J.EQ.1)  THEN
                  XARRAY(CNT)=ARRAY(2)
                  YARRAY(CNT)=ARRAY(3)
                ELSE
                  XARRAY(CNT)=ARRAY(2*J)
                  YARRAY(CNT)=ARRAY(2*J+1)
                ENDIF
 1400 CONTINUE
            ENDIF
          ELSEIF  (FIGFLG.EQ.5)  THEN
            IF ( SFCFLG .EQ. 1 ) THEN
              XSPOLY = ARRAY(5)
              YSPOLY = ARRAY(6)
              ARRAY(5) = XSPOLY + YSPOLY
              IF ( ARRAY(5) .GT. 2.D0*PI ) THEN
                ARRAY(5) = ARRAY(5) - 2.D0*PI
              ELSEIF ( ARRAY(5) .LT. -2.D0*PI ) THEN
                ARRAY(5) = ARRAY(5) + 2.D0*PI
              ENDIF
              ARRAY(6) = -YSPOLY
            ENDIF
            IF  (DABS(DABS(ARRAY(6))-TH).LT.EPS)  THEN
              CNT=CNT+1
              IF  (STFLG.EQ.1)  THEN
                XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5))
                YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5))
              ELSE
                XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
                YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
              ENDIF
              IF  (CNT.GE.253)  THEN
                XSPOLY=XARRAY(CNT)
                YSPOLY=YARRAY(CNT)
                CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,        
     *                         SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                         DTCODE, IRCD )
                IF ( IRCD.NE.0 )  THEN
                  CALL SFQERR( DTCODE )
                  MODID2 = 'SFCSPS'
                  IF( IRCD .EQ. 4 )  THEN
                    IF( DTCODE .EQ. 1161 )  THEN
                      IRCODE(1) = 8
                      IRCODE(2) = 12611
                      GO TO 8900
                    ELSE
                      GO TO 8000
                    ENDIF
                  ELSE
                    GO TO 8000
                  ENDIF
                ENDIF
                SETFLG = 1
                CNT=1
                XARRAY(CNT)=XSPOLY
                YARRAY(CNT)=YSPOLY
              ENDIF
            ELSE
              ARCNUM = IDINT(DABS(ARRAY(6))/TH) + 1
              IF  ((DABS(ARRAY(6))-(TH*(ARCNUM-1))).GT.EPS)             
     *                                                 ARCNUM=ARCNUM+1
              IF  (STFLG.EQ.1)  THEN
                STPNT=ARCNUM-1
                ENDPNT=1
                STFLG =-1
              ELSE
                STPNT =2
                ENDPNT=ARCNUM
                STFLG =1
              ENDIF
              DO  1500  J=STPNT ,ENDPNT ,STFLG
                CNT=CNT+1
                IF  (DABS(ARRAY(6)).LT.(TH*(J-1)))  THEN
                  XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)           
     *                                              +ARRAY(6))
                  YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)           
     *                                              +ARRAY(6))
                ELSE
                  IF ( ARRAY(6) .GT. 0.D0 )  THEN
                     XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)        
     *                                             +(TH*(J-1)))
                     YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)        
     *                                             +(TH*(J-1)))
                  ELSE
                     XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)        
     *                                             -(TH*(J-1)))
                     YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)        
     *                                             -(TH*(J-1)))
                  ENDIF
                ENDIF
                IF  (CNT.GE.253)  THEN
                  XSPOLY=XARRAY(CNT)
                  YSPOLY=YARRAY(CNT)
                  CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,      
     *                           SURF(SRFOFF+1), SFWK(SFWOFF+1),        
     *                           DTCODE, IRCD )
                  IF ( IRCD.NE.0 )  THEN
                    CALL SFQERR( DTCODE )
                    MODID2 = 'SFCSPS'
                    IF( IRCD .EQ. 4 )  THEN
                      IF( DTCODE .EQ. 1161 )  THEN
                        IRCODE(1) = 8
                        IRCODE(2) = 12611
                        GO TO 8900
                      ELSE
                        GO TO 8000
                      ENDIF
                    ELSE
                      GO TO 8000
                    ENDIF
                  ENDIF
                  SETFLG = 1
                  CNT=1
                  XARRAY(CNT)=XSPOLY
                  YARRAY(CNT)=YSPOLY
                ENDIF
 1500 CONTINUE
            ENDIF
          ENDIF
          CALL SPDGET (RSSTID(2) ,PRMNO ,ARRAY ,IRCD)
          IF  (IRCD.NE.0)  THEN
            MODE=2
            MODID2='SPDGET'
            GO TO  8000
          ENDIF
          DDEC = VBQTYP(DHEX(1))
        ENDIF
        IF ( I .EQ. 1 ) GO TO 3000
        IF  (DDEC.EQ.2)  THEN
          IF ( SFCFLG .EQ. 1 ) THEN
            ARRAY(2) = ARRAY(2)+ARRAY(4)*ARRAY(6)
            ARRAY(3) = ARRAY(3)+ARRAY(5)*ARRAY(6)
            ARRAY(4) = -ARRAY(4)
            ARRAY(5) = -ARRAY(5)
          ENDIF
          CNT=CNT+1
          IF  (ENDPFG.EQ.1)  THEN
            XARRAY(CNT)=ARRAY(2)+ARRAY(4)*ARRAY(6)
            YARRAY(CNT)=ARRAY(3)+ARRAY(5)*ARRAY(6)
          ELSE
            XARRAY(CNT)=ARRAY(2)
            YARRAY(CNT)=ARRAY(3)
          ENDIF
          IF  (CNT.GE.253)  THEN
            XSPOLY=XARRAY(CNT)
            YSPOLY=YARRAY(CNT)
            CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,            
     *                     SURF(SRFOFF+1), SFWK(SFWOFF+1),              
     *                     DTCODE, IRCD )
            IF ( IRCD.NE.0 )  THEN
              CALL SFQERR( DTCODE )
              MODID2 = 'SFCSPS'
              IF( IRCD .EQ. 4 )  THEN
                IF( DTCODE .EQ. 1161 )  THEN
                  IRCODE(1) = 8
                  IRCODE(2) = 12611
                  GO TO 8900
                ELSE
                  GO TO 8000
                ENDIF
              ELSE
                GO TO 8000
              ENDIF
            ENDIF
            SETFLG = 1
            CNT=1
            XARRAY(CNT)=XSPOLY
            YARRAY(CNT)=YSPOLY
          ENDIF
        ELSEIF  (DDEC.EQ.3)  THEN
          N=( VBQLNG(DHEX(1)) - 24 ) / 16
          DO 1510 I1 = 1, N
            ARRAY(2*I1+2) = ARRAY(2)+ARRAY(2*I1+2)
            ARRAY(2*I1+3) = ARRAY(3)+ARRAY(2*I1+3)
 1510     CONTINUE
          IF ( SFCFLG .EQ. 1 ) THEN
            I1 = 1
            J1 = N+1
 1520       CONTINUE
            IF ( I1 .LT. J1 ) THEN
              XSPOLY = ARRAY(I1*2)
              YSPOLY = ARRAY(I1*2+1)
              ARRAY(I1*2)   = ARRAY(J1*2)
              ARRAY(I1*2+1) = ARRAY(J1*2+1)
              ARRAY(J1*2)   = XSPOLY
              ARRAY(J1*2+1) = YSPOLY
              I1 = I1+1
              J1 = J1-1
              GO TO 1520
            ENDIF
          ENDIF
          IF  (N.EQ.1)  THEN
            CNT=CNT+1
            IF  (ENDPFG.EQ.1)  THEN
              XARRAY(CNT)=ARRAY(4)
              YARRAY(CNT)=ARRAY(5)
            ELSE
              XARRAY(CNT)=ARRAY(2)
              YARRAY(CNT)=ARRAY(3)
            ENDIF
          ELSE
            IF  (ENDPFG.EQ.1)  THEN
              STPNT=2
              ENDPNT=N+1
            ELSE
              STPNT =N
              ENDPNT=1
            ENDIF
            DO  1600  J=STPNT ,ENDPNT ,ENDPFG
              CNT=CNT+1
              IF  (J.EQ.1)  THEN
                XARRAY(CNT)=ARRAY(2)
                YARRAY(CNT)=ARRAY(3)
              ELSE
                XARRAY(CNT)=ARRAY(2*J)
                YARRAY(CNT)=ARRAY(2*J+1)
              ENDIF
              IF  (CNT.GE.253)  THEN
                XSPOLY=XARRAY(CNT)
                YSPOLY=YARRAY(CNT)
                CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,        
     *                         SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                         DTCODE, IRCD )
                IF ( IRCD.NE.0 )  THEN
                  CALL SFQERR( DTCODE )
                  MODID2 = 'SFCSPS'
                  IF( IRCD .EQ. 4 )  THEN
                    IF( DTCODE .EQ. 1161 )  THEN
                      IRCODE(1) = 8
                      IRCODE(2) = 12611
                      GO TO 8900
                    ELSE
                      GO TO 8000
                    ENDIF
                  ELSE
                    GO TO 8000
                  ENDIF
                ENDIF
                SETFLG = 1
                CNT=1
                XARRAY(CNT)=XSPOLY
                YARRAY(CNT)=YSPOLY
              ENDIF
 1600 CONTINUE
          ENDIF
        ELSEIF  (DDEC.EQ.5)  THEN
          IF ( SFCFLG .EQ. 1 ) THEN
            XSPOLY = ARRAY(5)
            YSPOLY = ARRAY(6)
            ARRAY(5) = XSPOLY + YSPOLY
            IF ( ARRAY(5) .GT. 2.D0*PI ) THEN
              ARRAY(5) = ARRAY(5) - 2.D0*PI
            ELSEIF ( ARRAY(5) .LT. -2.D0*PI ) THEN
              ARRAY(5) = ARRAY(5) + 2.D0*PI
            ENDIF
            ARRAY(6) = -YSPOLY
          ENDIF
          IF  (DABS(DABS(ARRAY(6))-TH).LT.EPS)  THEN
            CNT=CNT+1
            IF  (ENDPFG.EQ.1)  THEN
              XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)+ARRAY(6))
              YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)+ARRAY(6))
            ELSE
              XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5))
              YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5))
            ENDIF
            IF  (CNT.GE.253)  THEN
              XSPOLY=XARRAY(CNT)
              YSPOLY=YARRAY(CNT)
              CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,          
     *                       SURF(SRFOFF+1), SFWK(SFWOFF+1),            
     *                       DTCODE, IRCD )
              IF ( IRCD.NE.0 )  THEN
                CALL SFQERR( DTCODE )
                MODID2 = 'SFCSPS'
                IF( IRCD .EQ. 4 )  THEN
                  IF( DTCODE .EQ. 1161 )  THEN
                    IRCODE(1) = 8
                    IRCODE(2) = 12611
                    GO TO 8900
                  ELSE
                    GO TO 8000
                  ENDIF
                ELSE
                  GO TO 8000
                ENDIF
              ENDIF
              SETFLG = 1
              CNT=1
              XARRAY(CNT)=XSPOLY
              YARRAY(CNT)=YSPOLY
            ENDIF
          ELSE
            ARCNUM = IDINT(DABS(ARRAY(6))/TH) + 1
            IF  ((DABS(ARRAY(6))-(TH*(ARCNUM-1))).GT.EPS)               
     *                                               ARCNUM=ARCNUM+1
            IF  (ENDPFG.EQ.1)  THEN
              STPNT =2
              ENDPNT=ARCNUM
              ENDPFG=1
            ELSE
              STPNT=ARCNUM-1
              ENDPNT=1
              ENDPFG =-1
            ENDIF
            DO  1700  J=STPNT ,ENDPNT ,ENDPFG
              CNT=CNT+1
              IF  (DABS(ARRAY(6)).LE.(TH*(J-1)))  THEN
                XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)             
     *                                            +ARRAY(6))
                YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)             
     *                                            +ARRAY(6))
              ELSE
                IF ( ARRAY(6) .GT. 0.D0 )  THEN
                   XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)          
     *                                           +(TH*(J-1)))
                   YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)          
     *                                           +(TH*(J-1)))
                ELSE
                   XARRAY(CNT)=ARRAY(2)+ARRAY(4)*DCOS(ARRAY(5)          
     *                                           -(TH*(J-1)))
                   YARRAY(CNT)=ARRAY(3)+ARRAY(4)*DSIN(ARRAY(5)          
     *                                           -(TH*(J-1)))
                ENDIF
              ENDIF
              IF  (CNT.GE.253)  THEN
                XSPOLY=XARRAY(CNT)
                YSPOLY=YARRAY(CNT)
                CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,        
     *                         SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                         DTCODE, IRCD )
                IF ( IRCD.NE.0 )  THEN
                  CALL SFQERR( DTCODE )
                  MODID2 = 'SFCSPS'
                  IF( IRCD .EQ. 4 )  THEN
                    IF( DTCODE .EQ. 1161 )  THEN
                      IRCODE(1) = 8
                      IRCODE(2) = 12611
                      GO TO 8900
                    ELSE
                      GO TO 8000
                    ENDIF
                  ELSE
                    GO TO 8000
                  ENDIF
                ENDIF
                SETFLG = 1
                CNT=1
                XARRAY(CNT)=XSPOLY
                YARRAY(CNT)=YSPOLY
              ENDIF
 1700 CONTINUE
          ENDIF
        ENDIF
 3000 CONTINUE
      IF  ((DABS(XS-XE).GE.EPS).OR.                                     
     *     (DABS(YS-YE).GE.EPS))  THEN
            IRCODE(1)=8
            IRCODE(2)=12602
            GO TO  8900
        ENDIF
 3100 CONTINUE
      IF  ( CNT .GT. 1 )  THEN
        XARRAY(CNT)=XSTART
        YARRAY(CNT)=YSTART
        CALL  SFCSPS ( XARRAY, YARRAY, CNT, INC, MAXTBL,                
     *                 SURF(SRFOFF+1), SFWK(SFWOFF+1),                  
     *                 DTCODE, IRCD )
        IF ( IRCD.NE.0 )  THEN
          CALL SFQERR( DTCODE )
          MODID2 = 'SFCSPS'
          IF( IRCD .EQ. 4 )  THEN
            IF( DTCODE .EQ. 1161 )  THEN
              IRCODE(1) = 8
              IRCODE(2) = 12611
              GO TO 8900
            ELSE
              GO TO 8000
            ENDIF
          ELSE
            GO TO 8000
          ENDIF
        ENDIF
      ENDIF
      CALL  SFCEDS ( MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),            
     *               DTCODE, IRCD )
      CRTFLG=0
      IF  (IRCD.NE.0)  THEN
        IF(   (DTCODE .EQ. 134) .AND. (SETFLG .EQ. 0)                   
     *  .AND. (SFCFLG .EQ. 0)  ) THEN
          I = 1
          J = CNT
 3200     CONTINUE
          IF( I .LT. J ) THEN
            XSPOLY = XARRAY(I)
            YSPOLY = YARRAY(I)
            XARRAY(I) = XARRAY(J)
            YARRAY(I) = YARRAY(J)
            XARRAY(J) = XSPOLY
            YARRAY(J) = YSPOLY
            I = I + 1
            J = J - 1
            GO TO 3200
          ENDIF
          CALL  SFCRTS ( ENTTYP, ATRID, VISI, ORGFLG, ORG,              
     *                   MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),        
     *                   DTCODE, IRCD )
          IF ( IRCD.NE.0 )  THEN
            MODID2 = 'SFCRTS'
            GO TO  8000
          ENDIF
          CRTFLG=1
          SFCFLG = 1
          GO TO 3100
        ELSEIF (   ( DTCODE .EQ. 134 ) .AND. ( SETFLG .EQ. 1 )          
     *       .AND. ( SFCFLG .EQ. 0 )  ) THEN
          SFCFLG = 1
          IF ( NUM .GT. 2 ) THEN
            DO 4000 I = 1, NUM
              RSSTID(I) = ENTIDS(NUM+1-I)
 4000       CONTINUE
          ENDIF
          GO TO 2000
        ENDIF
        IF ( IRCD.NE.0 )  THEN
          MODID2 = 'SFCEDS'
          GO TO  8000
        ENDIF
      ENDIF
 5000 CONTINUE
      IF  (IMODE.EQ.5)  THEN
        MAXTBL(3) = 8
      ELSE
        MAXTBL(3) = 0
      ENDIF
      MAXTBL(4) = 1
      CALL  SFWSFS ( 1, OENTID, MAXTBL, PRTHT, SURF(SRFOFF+1),          
     *               SFWK(SFWOFF+1), PESADR, SURFNO, DTCODE, IRCD )
      IF ( IRCD .GT. 4 )  THEN
        MODID2 = 'SFWSFS'
        GO TO  8000
      ENDIF
      SFSFLG = 1
      IF( IMODE .EQ. 1 ) THEN
        RKIND = 14
      ELSEIF( IMODE .EQ. 2 ) THEN
        RKIND = 4
      ELSEIF( IMODE .EQ. 3 ) THEN
        RKIND = 5
      ELSEIF( IMODE .EQ. 4 ) THEN
        RKIND = 15
      ELSEIF( IMODE .EQ. 5 ) THEN
        RKIND = 16
      ENDIF
      CALL  VQRAY ( 1, RKIND, LAYER, RAYNO, DTCODE, IRCD )
      IF( IRCD .NE. 0 ) THEN
        MODE=5
        MODID2='VQRAY '
        GO TO 8000
      ENDIF
      CALL  SEMRAY ( PESADR, 1, 1, RAYNO, IRCD )
      IF( IRCD .NE. 0 ) THEN
        MODE=2
        MODID2='SEMRAY'
        GO TO 8000
      ENDIF
 6000 CONTINUE
      IF  (IMODE.EQ.5)  THEN
        DO  6100  J = 1 ,30
          CALL  VQRCHR ( J ,CHRATR ,DTCODE ,IRCD)
          IF  (IRCD.NE.0)  THEN
            IF  ((IRCD.EQ.8).AND.(DTCODE.EQ.2001))  GO TO  6100
            MODE=5
            MODID2='VQRCHR'
            GO TO  8000
          ENDIF
          GO TO  6200
 6100   CONTINUE
        IRCODE(1)=8
        IRCODE(2)=12612
        GO TO  8900
 6200 CONTINUE
        ATRTB1(1) = SNGL( CHRATR(1) )
        ATRTB1(2) = SNGL( CHRATR(1) * CHRATR(2) )
        ATRTB1(3) = SNGL( CHRATR(1) * CHRATR(3) )
        ATRTB1(4) = 0.0
        ATRTB1(5) = 0.0
        ATRTB2(1)=ATRTBL(3)
        ATRTB2(2)=ATRTBL(1)
        CALL  SPSTXT  (ATRID ,ATRTB1 ,ATRTB2 ,FONT ,IRCD)
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SPSTXT'
          GO TO  8000
        ENDIF
        CALL  SSCRT2  (ENTTYP ,VISI ,DISP ,IRCD)
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SSCRT2'
          GO TO  8000
        ENDIF
        ACRTFG=1
        WRITE  (TEXTS,'(F8.3)')  PRTHT
        DO 6300 I = 1, 8
          IF( TEXTS(I:I) .NE. ' ' ) GO TO 6400
6300    CONTINUE
6400    CONTINUE
        WKTEXT = TEXTS(I:8)
        TEXTS  = WKTEXT
        CALL  SPTXT2  (POS(1) ,POS(2) ,TEXTS ,N8 ,CODE ,ATRID ,TMODE    
     *                                                        ,IRCD)
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SPTXT2'
          GO TO  8000
        ENDIF
        CALL  SSEND2  (N0 ,N1 ,ISEGNO ,IRCD)
        ACRTFG=0
        IF  (IRCD.NE.0)  THEN
          MODE=2
          MODID2='SSEND2'
          CALL SCQERR( DTCODE )
          IF( IRCD .EQ. 4 )  THEN
            IF( DTCODE .EQ. 100 )  THEN
              IRCODE(1) = 12
              IRCODE(2) = 10998
              GO TO 8100
            ELSE
              GO TO 8000
            ENDIF
          ELSE
            GO TO 8000
          ENDIF
        ENDIF
      ENDIF
 7000 CONTINUE
      IF  (ERS.NE.0)  THEN
        CALL  VDPELM  (ENTIDS ,NUM ,1 ,DTCODE ,IRCD)
        IF  (IRCD.GT.4)  THEN
          MODE=5
          MODID2='VDPELM'
          GO TO  8000
        ENDIF
      ENDIF
 7500 CONTINUE
      CALL  VSSAVE  (SAVFLG ,DTCODE ,IRCD)
      IF  (IRCD.NE.0)  THEN
        MODE=5
        MODID2='VSSAVE'
        GO TO  8000
      ENDIF
      GO TO  9000
 8000 CONTINUE
      CALL  PQEMSG( MODID1, MODID2, IRCD, DTCODE, IRCODE )
      GO TO 8900
 8100 CONTINUE
      CALL VBMSG(MODE,IRCODE(2),INSMSG,0,MODID1,MODID2,IRCD,RCD)
      GO TO 8900
 8900 CONTINUE
      IF  (ACRTFG.EQ.1)  THEN
        CALL  SSEND2  (N0 ,N1 ,ISEGNO ,IRCD)
      ENDIF
      IF  (CRTFLG.EQ.1)  THEN
        CALL  SFCEDS ( MAXTBL, SURF(SRFOFF+1), SFWK(SFWOFF+1),          
     *                 DTCODE, IRCD )
      ENDIF
      IF  (SFSFLG.EQ.1)  THEN
        CALL  SEMDLT ( PESADR, 1, 1, 0, IRCD )
      ENDIF
 9000 CONTINUE
      RETURN
      END
      SUBROUTINE  VBBORD ( PDATA, DTCODE, IRCODE )
      INTEGER*4  VSNO
      INTEGER*4  ENTTYP
      INTEGER*4  ENTCLS
      INTEGER*4  IRCODE
      INTEGER*4  IRC
      INTEGER*4  CLASS(8)
      INTEGER*4  TYPE(8)
      INTEGER*4  SEGID
      INTEGER*4  ARRY(1)
      INTEGER*4  BORDFG
      INTEGER*4  BDFLG
      INTEGER*4  DT
      INTEGER*4  INFARY(16)
      INTEGER*4  I
      INTEGER*4  DTCODE
      INTEGER*4  ISIZE
      INTEGER*4  WTYPE
      INTEGER*4  PRMCNT
      INTEGER*4  OFF4
      INTEGER*4  OFF8
      INTEGER*4  IX
      INTEGER*4  IY
      REAL*8  PDATA(4)
      REAL*8  WX(4)
      REAL*8  WY(4)
      REAL*8  ARRAY(1)
      REAL*8  XMIN
      REAL*8  YMIN
      REAL*8  XMAX
      REAL*8  YMAX
      REAL*8  XSTART
      REAL*8  YSTART
      REAL*8  XEND
      REAL*8  YEND
      REAL*8  WXMIN
      REAL*8  WYMIN
      REAL*8  WXMAX
      REAL*8  WYMAX
      REAL*8  EXTARY(4)
      REAL*8  BDCLR
      REAL*8  BDSIZE(4)
      REAL*8  SENDSR
      REAL*8  SCSIZE(4)
      CHARACTER*6  EMODID
      EQUIVALENCE  ( ARRY  , ARRAY )
      INTEGER*4  VBQTYP
      INTEGER*4  VBQLNG
      EXTERNAL      VBQTYP
      EXTERNAL      VBQLNG
      DTCODE  = 0
      IRCODE  = 0
      BDFLG   = 0
      XMAX    = -16.0D31
      YMAX    = -16.0D31
      XMIN    = 16.0D31
      YMIN    = 16.0D31
      CALL  VHQRCA ( ARRY, OFF4 )
      IF ( MOD(OFF4,2) .NE. 0 )  OFF4 = OFF4 + 1
      OFF8 = OFF4 / 2
      CALL  SVQVSN( 'NAPE    ', VSNO )
      IF( VSNO .EQ. 0 ) THEN
        IRCODE = 8
        DTCODE = 6102
        GO TO 8800
      ENDIF
      CALL  VQTYPE( 27, ENTTYP, DT, IRC )
      IF ( IRC .NE. 0 )  GO TO 8100
      CALL  VQCLAS( 93, 0, ENTCLS, DT, IRC )
      IF ( IRC .NE. 0 )  GO TO 8100
      DO 1000 I = 1 , 8
        CLASS(I) = 0
        TYPE(I) = 0
 1000 CONTINUE
      CALL CSONOF( CLASS, 32, ENTCLS  , 1, 1, IRC )
      IF( IRC .NE. 0 )  GO TO 8200
      CALL CSONOF( TYPE, 32, ENTTYP  , 1, 1, IRC )
      IF ( IRC .NE. 0 )  GO TO 8200
 1600 CONTINUE
      CALL SSRSTR( 2, VSNO, CLASS, TYPE, IRC )
      IF( IRC .NE. 0 ) THEN
        EMODID = 'SSRSTR'
        GO TO 8300
      ENDIF
      CALL SSRSEQ( SEGID,  IRC )
      IF( IRC .NE. 0 ) THEN
        EMODID = 'SSRSEQ'
        GO TO 8300
      ENDIF
      IF ( SEGID .NE. 0 ) GO TO 2600
      DTCODE = 6104
      IRCODE = 4
      DO  2000 I=1, 8
        CLASS(I) = 0
        TYPE(I) = 0
 2000 CONTINUE
      CALL CSONOF( TYPE, 32, 2, 5, 1, IRC )
      IF( IRC .NE. 0 ) GO TO 8200
      CALL VQCLAS( 271, 0, ENTCLS, DT, IRC )
      IF ( IRC .NE. 0 )  GO TO 8100
      CALL CSONOF( CLASS, 32, ENTCLS  , 1, 1, IRC )
      IF( IRC .NE. 0 ) GO TO 8200
      CALL SSRSTR( 2, VSNO, CLASS, TYPE, IRC )
      IF( IRC .NE. 0 ) THEN
        EMODID = 'SSRSTR'
        GO TO 8300
      ENDIF
 2500 CONTINUE
      CALL SSRSEQ( SEGID,  IRC )
      IF( IRC .NE. 0 ) THEN
        EMODID = 'SSRSEQ'
        GO TO 8300
      ENDIF
      IF( SEGID .EQ. 0 ) GO TO  6000
 2600 CONTINUE
      PRMCNT = 0
      CALL SSREAD( SEGID,  INFARY )
      IF( INFARY(1) .NE. 0 ) THEN
        EMODID = 'SSREAD'
        GO TO 8300
      ENDIF
 2700 CONTINUE
      PRMCNT = PRMCNT + 1
      IF( PRMCNT .GT. INFARY(12) ) GO TO 2500
      CALL SPSGET( ARRY(OFF4+1), IRC )
      IF( IRC .NE. 0 ) THEN
        EMODID = 'SPSGET'
      ENDIF
      WTYPE = VBQTYP( ARRY(OFF4+1) )
      IF( WTYPE .EQ. 2 ) THEN
        IF ( DABS(ARRAY(OFF8+6)) .LE. 1.D-7 ) GO TO 2700
        XSTART   = ARRAY(OFF8+2)
        YSTART   = ARRAY(OFF8+3)
        XEND     = XSTART + ARRAY(OFF8+6) * ARRAY(OFF8+4)
        YEND     = YSTART + ARRAY(OFF8+6) * ARRAY(OFF8+5)
        IF ( DABS(ARRAY(OFF8+6)) .GT. 1.D+20 ) THEN
          XEND = XSTART
          YEND = YSTART
        ENDIF
        IF ( XSTART .GE. XEND ) THEN
          WXMAX  = XSTART
          WXMIN  = XEND
        ELSE
          WXMAX  = XEND
          WXMIN  = XSTART
        ENDIF
        IF ( YSTART .GE. YEND ) THEN
          WYMAX  = YSTART
          WYMIN  = YEND
        ELSE
          WYMAX  = YEND
          WYMIN  = YSTART
        ENDIF
        IF( XMIN .GT. WXMIN ) XMIN = WXMIN
        IF( YMIN .GT. WYMIN ) YMIN = WYMIN
        IF( XMAX .LT. WXMAX ) XMAX = WXMAX
        IF( YMAX .LT. WYMAX ) YMAX = WYMAX
        BDFLG = 1
        GO TO    2700
      ELSEIF ( WTYPE .EQ. 3 )  THEN
        ISIZE = ( VBQLNG( ARRY(OFF4+1) ) -8 ) / 16
        DO 2900 I=2, ISIZE
          IX = OFF8 + I*2
          IY = IX + 1
          ARRAY(IX) = ARRAY(OFF8+2) + ARRAY(IX)
          ARRAY(IY) = ARRAY(OFF8+3) + ARRAY(IY)
 2900   CONTINUE
        DO 3000 I=1, ISIZE
          IX = OFF8 + I*2
          IY = IX + 1
          IF( XMIN .GT. ARRAY(IX) ) XMIN = ARRAY(IX)
          IF( YMIN .GT. ARRAY(IY) ) YMIN = ARRAY(IY)
          IF( XMAX .LT. ARRAY(IX) ) XMAX = ARRAY(IX)
          IF( YMAX .LT. ARRAY(IY) ) YMAX = ARRAY(IY)
 3000   CONTINUE
        BDFLG = 1
        GO TO    2700
      ELSEIF( WTYPE .EQ. 4 ) THEN
        WXMIN = ARRAY(OFF8+2) - ARRAY(OFF8+4)
        WYMIN = ARRAY(OFF8+3) - ARRAY(OFF8+4)
        WXMAX = ARRAY(OFF8+2) + ARRAY(OFF8+4)
        WYMAX = ARRAY(OFF8+3) + ARRAY(OFF8+4)
        IF( XMIN .GT. WXMIN ) XMIN = WXMIN
        IF( YMIN .GT. WYMIN ) YMIN = WYMIN
        IF( XMAX .LT. WXMAX ) XMAX = WXMAX
        IF( YMAX .LT. WYMAX ) YMAX = WYMAX
        BDFLG = 1
        GO TO    2700
      ELSEIF( WTYPE .EQ. 5 ) THEN
        CALL VBEXAC( ARRAY(OFF8+2), ARRAY(OFF8+3), ARRAY(OFF8+4),       
     *               ARRAY(OFF8+5), ARRAY(OFF8+6), EXTARY, IRC )
        IF( IRC .NE. 0 ) GO TO 2700
        IF   ( XMIN .GT. EXTARY(1) )      XMIN = EXTARY(1)
        IF   ( YMIN .GT. EXTARY(2) )      YMIN = EXTARY(2)
        IF   ( XMAX .LT. EXTARY(3) )      XMAX = EXTARY(3)
        IF   ( YMAX .LT. EXTARY(4) )      YMAX = EXTARY(4)
        BDFLG = 1
        GO TO    2700
      ELSEIF (WTYPE .EQ. 10 ) THEN
        WX(1) = ARRAY(OFF8+2)
        WY(1) = ARRAY(OFF8+3)
        WX(2) = ARRAY(OFF8+2) + ARRAY(OFF8+6) * ARRAY(OFF8+4)
        WY(2) = ARRAY(OFF8+3) + ARRAY(OFF8+6) * ARRAY(OFF8+5)
        WX(3) = WX(2)    - ARRAY(OFF8+7) * ARRAY(OFF8+5)
        WY(3) = WY(2)    + ARRAY(OFF8+7) * ARRAY(OFF8+4)
        WX(4) = ARRAY(OFF8+2) - ARRAY(OFF8+7) * ARRAY(OFF8+5)
        WY(4) = ARRAY(OFF8+3) + ARRAY(OFF8+7) * ARRAY(OFF8+4)
        DO  3500    I= 1 , 4
          IF( XMIN .GT. WX(I) ) XMIN = WX(I)
          IF( YMIN .GT. WY(I) ) YMIN = WY(I)
          IF( XMAX .LT. WX(I) ) XMAX = WX(I)
          IF( YMAX .LT. WY(I) ) YMAX = WY(I)
 3500   CONTINUE
        BDFLG = 1
        GO TO 2700
      ELSE
        DTCODE = 6103
        IRCODE =  8
        GO TO 8800
      ENDIF
 6000 CONTINUE
      IF( BDFLG .EQ. 1 ) THEN
        CALL VQBORD( BORDFG, BDCLR, BDSIZE )
        XMIN = XMIN - BDCLR
        YMIN = YMIN - BDCLR
        XMAX = XMAX + BDCLR
        YMAX = YMAX + BDCLR
        BDSIZE(1) = XMIN
        BDSIZE(2) = YMIN
        BDSIZE(3) = XMAX
        BDSIZE(4) = YMAX
        BORDFG = 1
        CALL VSBORD( BORDFG, BDCLR, BDSIZE, DT, IRC )
        IF( IRC .NE. 0 ) GO TO 8100
        PDATA(1) = XMIN
        PDATA(2) = YMIN
        PDATA(3) = XMAX
        PDATA(4) = YMAX
      ELSE
        CALL VQBORD( BORDFG, BDCLR, BDSIZE )
        BORDFG = 0
        CALL VSBORD( BORDFG, BDCLR, BDSIZE, DT, IRC )
        IF( IRC .NE. 0 ) GO TO 8100
        CALL VQSCSZ( SENDSR, SCSIZE )
        PDATA(1) = SCSIZE(1)
        PDATA(2) = SCSIZE(2)
        PDATA(3) = SCSIZE(3)
        PDATA(4) = SCSIZE(4)
        IRCODE = 4
        DTCODE = 6101
        GO TO 8800
      ENDIF
      GO TO 8800
 8100 CONTINUE
      DTCODE = 9001
      IRCODE = 12
      GO TO 9000
 8200 CONTINUE
      DTCODE = 9005
      IRCODE = 12
      CALL VSDERR( 5, DTCODE, 'CSONOF' )
      GO TO 9000
 8300 CONTINUE
      CALL SCQERR( DT )
      CALL VSDERR( 5, DT, EMODID )
      DTCODE = 9005
      IRCODE = 12
      GO TO 9000
 8800 CONTINUE
      CALL VSDERR( 1, DTCODE, 'VBBORD' )
 9000 CONTINUE
      RETURN
      END
      print *,'pass'
      end
       subroutine vqscsz                             
       entry scqerr                             
       entry sfceds                             
       entry vqclt                              
       entry ssrseq                             
       entry sfcsas                             
       entry vqbord                             
       entry ssend2                             
       entry vqrchr                             
       entry ssread                             
       entry vbqtyp                             
       entry vqray                              
       entry semray                             
       entry semdlt                             
       entry vqtype                             
       entry sptxt2                             
       entry csonof                             
       entry sfwsfs                             
       entry sfsola                             
       entry spstxt                             
       entry sscrt2                             
       entry vdpelm                             
       entry vhqrca                             
       entry vsbord                             
       entry svqvsn                             
       entry spdget                             
       entry pqemsg                             
       entry sfqerr                             
       entry vbqlng                             
       entry spsget                             
       entry vqclas                             
       entry ssrstr                             
       entry vbexac                             
       entry sfcrts                             
       entry vhqwka                             
       entry vsderr                             
       entry vssave                             
       entry sfcsps                             
       entry vbmsg                              
       entry sfshda  
       end
