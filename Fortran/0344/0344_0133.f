      COMPLEX*8 A(10),B(10),T,S
      LOGICAL*4 L(10),LX,LY
      DATA      L/5*.TRUE.,.FALSE.,.TRUE.,.FALSE.,.TRUE.,.FALSE./
      DATA  A,B/10*(1.,2.),10*(2.,-1.)/,LY/.TRUE./
      DO 10 I=1,10
       T=A(I)+B(I)
       S=T*I
       LX = L(I).AND.LY
       IF (LX) THEN
         A(I) = S + A(I)
         L(I) = LX .OR. LY
       ENDIF
   10 CONTINUE
      WRITE(6,*) 'S= ',S,' T= ',T
      WRITE(6,*) 'LX= ',LX
      WRITE(6,*) 'A= ',A
      WRITE(6,*) 'L= ',L
      STOP
      END
