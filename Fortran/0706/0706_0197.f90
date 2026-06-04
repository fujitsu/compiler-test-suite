      call s1
      print *,'pass'
      end
      subroutine s1
      INTEGER*2 R
      PARAMETER (R=1)
      INTEGER*1     A11(2)/R*1,R*2/
      INTEGER*2     B11(2)/R*1,R*2/
      INTEGER*4     C11(2)/R*1,R*2/
      INTEGER*8     D11(2)/R*1,R*2/
      REAL   *4     E11(2)/R*1,R*2/
      REAL   *8     F11(2)/R*1,R*2/
      REAL   *16    G11(2)/R*1,R*2/
      COMPLEX*8     H11(2)/R*(1,1),R*(2,2)/
      COMPLEX*16    I11(2)/R*(1,1),R*(2,2)/
      COMPLEX*32    J11(2)/R*(1,1),R*(2,2)/
      LOGICAL AC
      DO 2 I=R,C11(1)
 2    IF(AC( D11(I)*A11(I+1),D11(I)**A11(I+1), &
             D11(I)*B11(I+1),D11(I)**B11(I+1), &
             D11(I)*C11(I+1),D11(I)**C11(I+1), &
             D11(I)*D11(I+1),D11(I)**D11(I+1), &
             D11(I)*E11(I+1),D11(I)**E11(I+1), &
             D11(I)*F11(I+1),D11(I)**F11(I+1), &
             D11(I)*G11(I+1),D11(I)**G11(I+1), &
             D11(I)*H11(I+1),D11(I)**H11(I+1), &
             D11(I)*I11(I+1),D11(I)**I11(I+1), &
             D11(I)*J11(I+1),D11(I)**J11(I+1)))PRINT *,'FAIL'

      END
      FUNCTION AC(IA1,IA2,IB1,IB2,IC1,IC2,ID1,ID2,IE1,IE2,IF1,IF2, &
                  IG1,IG2,IH1,IH2,II1,II2,IJ1,IJ2)
      LOGICAL  AC
      INTEGER*8   IA1,IA2,RA1,RA2
      INTEGER*8   IB1,IB2,RB1,RB2
      INTEGER*8   IC1,IC2,RC1,RC2
      INTEGER*8   ID1,ID2,RD1,RD2
      REAL   *4   IE1,IE2,RE1,RE2
      REAL   *8   IF1,IF2,RF1,RF2
      REAL   *16  IG1,IG2,RG1,RG2
      COMPLEX*8   IH1,IH2,RH1,RH2
      COMPLEX*16  II1,II2,RI1,RI2
      COMPLEX*32  IJ1,IJ2,RJ1,RJ2
      PARAMETER (RA1=1*2,RA2=1**2)
      PARAMETER (RB1=1*2,RB2=1**2)
      PARAMETER (RC1=1*2,RC2=1**2)
      PARAMETER (RD1=1*2,RD2=1**2)
      PARAMETER (RE1=1*2,RE2=1**2)
      PARAMETER (RF1=1*2,RF2=1**2)
      PARAMETER (RG1=1*2,RG2=1**2)
      RH1=1*(2,2)
      RH2=1**(2,2)
      RI1=1*(2,2)
      RI2=1**(2,2)
      RJ1=1*(2,2)
      RJ2=1**(2,2)
      IF (IA1.NE.RA1.OR.IA2.NE.RA2) PRINT *,'FAIL'
      IF (IB1.NE.RB1.OR.IB2.NE.RB2) PRINT *,'FAIL'
      IF (IC1.NE.RC1.OR.IC2.NE.RC2) PRINT *,'FAIL'
      IF (ID1.NE.RD1.OR.ID2.NE.RD2) PRINT *,'FAIL'
      IF (IE1.NE.RE1.OR.IE2.NE.RE2) PRINT *,'FAIL'
      IF (IF1.NE.RF1.OR.IF2.NE.RF2) PRINT *,'FAIL'
      IF (IG1.NE.RG1.OR.IG2.NE.RG2) PRINT *,'FAIL'
      IF (IH1.NE.RH1.OR.IH2.NE.RH2) PRINT *,'FAIL'
      IF (II1.NE.RI1.OR.II2.NE.RI2) PRINT *,'FAIL'
      IF (IJ1.NE.RJ1.OR.IJ2.NE.RJ2) PRINT *,'FAIL'
      AC=.NOT..TRUE.
      END
