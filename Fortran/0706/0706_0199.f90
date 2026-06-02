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
 2    IF(AC( H11(I)*A11(I+1),H11(I)**A11(I+1),&
            H11(I)*B11(I+1),H11(I)**B11(I+1),&
            H11(I)*C11(I+1),H11(I)**C11(I+1),&
            H11(I)*D11(I+1),H11(I)**D11(I+1),&
            H11(I)*E11(I+1),H11(I)**E11(I+1),&
            H11(I)*F11(I+1),H11(I)**F11(I+1),&
            H11(I)*G11(I+1),H11(I)**G11(I+1),&
            H11(I)*H11(I+1),H11(I)**H11(I+1),&
            H11(I)*I11(I+1),H11(I)**I11(I+1),&
            H11(I)*J11(I+1),H11(I)**J11(I+1)))PRINT *,'FAIL'

      END
      FUNCTION AC(IA1,IA2,IB1,IB2,IC1,IC2,ID1,ID2,IE1,IE2,IF1,IF2, &
                IG1,IG2,IH1,IH2,II1,II2,IJ1,IJ2)
      LOGICAL  AC
      COMPLEX*8   IA1,IA2,RA1,RA2
      COMPLEX*8   IB1,IB2,RB1,RB2
      COMPLEX*8   IC1,IC2,RC1,RC2
      COMPLEX*8   ID1,ID2,RD1,RD2
      COMPLEX*8   IE1,IE2,RE1,RE2
      COMPLEX*16  IF1,IF2,RF1,RF2
      COMPLEX*32  IG1,IG2,RG1,RG2
      COMPLEX*8   IH1,IH2,RH1,RH2
      COMPLEX*16  II1,II2,RI1,RI2
      COMPLEX*32  IJ1,IJ2,RJ1,RJ2
      PARAMETER (RA1=(1,1)*2,RA2=(1,1)**2)
      PARAMETER (RB1=(1,1)*2,RB2=(1,1)**2)
      PARAMETER (RC1=(1,1)*2,RC2=(1,1)**2)
      PARAMETER (RD1=(1,1)*2,RD2=(1,1)**2)
      RE1=(1,1)*2
      RE2=(1,1)**2.
      RF1=(1,1)*2
      RF2=(1,1)**2D0
      RG1=(1,1)*2
      RG2=(1,1)**2Q0
      RH1=(1,1)*(2,2)
      RH2=(1,1)**(2,2)
      RI1=(1,1)*(2D0,2D0)
      RI2=(1,1)**(2D0,2D0)
      RJ1=(1,1)*(2Q0,2Q0)
      RJ2=(1,1)**(2Q0,2Q0)
      IF (abs(IA1-RA1)>0.00001.OR.abs(IA2-RA2)>0.00001) PRINT *,'FAIL'
      IF (abs(IB1-RB1)>0.00001.OR.abs(IB2-RB2)>0.00001) PRINT *,'FAIL'
      IF (abs(IC1-RC1)>0.00001.OR.abs(IC2-RC2)>0.00001) PRINT *,'FAIL'
      IF (abs(ID1-RD1)>0.00001.OR.abs(ID2-RD2)>0.00001) PRINT *,'FAIL'
      IF (abs(IE1-RE1)>0.00001.OR.abs(IE2-RE2)>0.00001) PRINT *,'FAIL'
      IF (abs(IF1-RF1)>0.00001.OR.abs(IF2-RF2)>0.00001) PRINT *,'FAIL'
      IF (abs(IG1-RG1)>0.00001.OR.abs(IG2-RG2)>0.00001) PRINT *,'FAIL'
      IF (abs(IH1-RH1)>0.00001.OR.abs(IH2-RH2)>0.00001) PRINT *,'FAIL'
      IF (abs(II1-RI1)>0.00001.OR.abs(II2-RI2)>0.00001) PRINT *,'FAIL'
      IF (abs(IJ1-RJ1)>0.00001.OR.abs(IJ2-RJ2)>0.00001) PRINT *,'FAIL'
      AC=.NOT..TRUE.
      END
