      CHARACTER*3   S1,S2,A(5),P1,P2,P3,S31*1,S32*2,S11*1,S12*2
      PARAMETER   (P1='123',P2='456',P3='789')
      LOGICAL      F1,F2
      S1=P1
      S2=P2
      S31='7'
      S32='89'
      S11=S1
      S12=S1(2:)
      I2=2
      A=S1
      IF (F1( (/  P1, ((/ P2 /),k=1,2), ((/ P3 /),k=1,2)/)   )
     X    )PRINT *,'FAIL'
      IF (F1( (/ S1 ,((/S2 /),k=1,i2),((/ S31//S32 /),k=1,i2)/) )
     X    )PRINT *,'FAIL'
      IF (F1( (/ S1 , ((/S2 /),k=1,2), ((/ S31//S32 /),k=1,2)/) )
     X    )PRINT *,'FAIL'
      IF (F1( (/ S11//S12 , ((/S2 /),k=1,2), ((/ S31//S32 /),k=1,2)/) )
     X    )PRINT *,'FAIL'
      IF (F2( (/ P1 , ((/P2 /),k=1,2), ((/P3 /) ,k=1,2)/) //A )
     X    )PRINT *,'FAIL'
      IF (F2( (/ S1 ,( (/S2 /),k=1,i2),( (/ S31//S32 /),k=1,i2)/)//A )
     X    )PRINT *,'FAIL'
      IF (F2( (/ S1 , ((/S2 /),k=1,2), ((/ S31//S32 /),k=1,2)/)//A)
     X    )PRINT *,'FAIL'
      IF (F2( (/ S11//S12,((/S2 /),k=1,i2),((/ S31//S32 /),k=1,i2)/)//A)
     X    )PRINT *,'FAIL'
      PRINT *,'PASS'
      END
      FUNCTION F1(A)
      LOGICAL          F2,F1
      CHARACTER*(*) A(5),B1*3(5),B2*6(5)
      B1(1)  ='123'
      B1(2:3)='456'
      B1(4:5)='789'
      DO 12 I=1,5
        IF (A(I).NE.B1(I)) PRINT *,'FAIL'
  12  CONTINUE
      F2=.FALSE.
      RETURN
      ENTRY    F2(A)
      B2(1)  ='123123'
      B2(2:3)='456123'
      B2(4:5)='789123'
      DO 2 I=1,5
        IF (A(I).NE.B2(I)) PRINT *,'FAIL'
   2  CONTINUE
      F2=.FALSE.
      END
