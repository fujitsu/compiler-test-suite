      DIMENSION  A1(3),A2(3,3),A4(2,2,2,2),
     -           B1(3),B2(3,3),B4(2,2,2,2),
     -           ITEM1(3),ITEM2(3,3),ITEM4(2,2,2,2)
C
      DATA B1(1)      /'11.1'/,
     *     B1(2)      /'22.2'/,
     *     B1(3)      /'33.3'/,
     *B2(1,1)    /'45.1'/,
     *     B2(1,2)    /'46.1'/,
     *     B2(1,3)    /'47.1'/,
     *     B2(2,1)    /'48.1'/,
     *     B2(2,2)    /'49.1'/,
     *     B2(2,3)    /'50.1'/,
     *     B2(3,1)    /'51.1'/,
     *     B2(3,2)    /'52.1'/,
     *     B2(3,3)    /'53.1'/
      DATA B4(1,1,1,1)/'14.3'/,
     *     B4(1,1,1,2)/'15.4'/,
     *     B4(1,1,2,1)/'16.5'/,
     *     B4(1,1,2,2)/'17.6'/,
     *     B4(1,2,1,1)/'18.7'/,
     *     B4(1,2,1,2)/'19.8'/,
     *     B4(1,2,2,1)/'20.9'/,
     *     B4(1,2,2,2)/'22.0'/,
     *     B4(2,1,1,1)/'23.1'/,
     *     B4(2,1,1,2)/'24.2'/,
     *     B4(2,1,2,1)/'25.3'/,
     *     B4(2,1,2,2)/'26.4'/,
     *     B4(2,2,1,1)/'27.5'/,
     *     B4(2,2,1,2)/'28.6'/,
     *     B4(2,2,2,1)/'29.7'/,
     *     B4(2,2,2,2)/'30.8'/
C
      WRITE(6,1)
      WRITE(6,2)
      DO  1000  I=1,3
      ITEM1(I)=I
      A1(I)=11.1*FLOAT(I)
 1000 CONTINUE
      WRITE(6,10) (ITEM1(I),A1(I),B1(I),I=1,3)
      DO 2000 I=1,3
      DO 2000 J=1,3
      ITEM2(I,J)=I*3+J
      A2(I,J)=41.1+ITEM2(I,J)
 2000 CONTINUE
      M=1
      N=3
      WRITE(6,10) ((ITEM2(I/2,J),A2(I/2,J),B2(I/2,J),J=M,N),I=2,7,2)
C
      DO 3000 I=1,2
      DO 3000 J=1,2
      DO  3000 K=1,2
      DO  3000 L=1,2
      ITEM4(I,J,K,L)=I*8+J*4+K*2+L-2
      A4(I,J,K,L)=1.1*ITEM4(I,J,K,L)
 3000 CONTINUE
      N=2
      WRITE(6,10) ((((  ITEM4(1,J,K,L),A4(2*I-1,J,2*K/2,L+L-L),
     -              B4(I,J,K,L),L=1,2),K=1,2),J=1,2),I=1,1)
      WRITE(6,4)
      WRITE(6,2)
      WRITE(6,10) ((((  ITEM4(2,J,K,L),A4(I/2,J*1,K*2/2,L),
     -              B4(2,J,K,L),L=M,N),K=M,2),J=1,N),I=4,5,2)
      WRITE(6,3)
      STOP
    1 FORMAT(1H1//10X,24H*FORTRAN*          ENTER,//)
    2 FORMAT(1H ,20X,8H- ITEM -,13X,19H- COMPUTED VALUE  -,12X,
     -      17H- COMPARE VALUE - //)
    3 FORMAT(///10X,23H*FORTRAN*          EXIT /)
   10 FORMAT(1H0,22X,1H(,I2,1H),22X,F6.1,30X,A4)
    4 FORMAT(1H1///)
      END
