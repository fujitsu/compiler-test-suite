      INTEGER*4    I4XX(10),I4YY(10)
      REAL*4       R4XX(10),R4YY(10)
      REAL*8       R8XX(10),R8YY(10)
      COMPLEX*8    C8XX(10),C8YY(10)
      COMPLEX*16   C16XX(10),C16YY(10)
      LOGICAL*4    L4XX(10),L4YY(10)

      DATA         I4XX/10*0/,I4YY/10*1/
      DATA         R4XX/10*0.0/,R4YY/10*1.0/
      DATA         R8XX/10*0.0/,R8YY/10*1.0/
      DATA         C8XX/10*(0.0,0.0)/,C8YY/10*(1.0,2.0)/
      DATA         C16XX/10*(0.0,0.0)/,C16YY/10*(1.0,2.0)/
      DATA         L4XX/10*.FALSE./,L4YY/10*.TRUE./

      DO 10 I=1,10
        I4XX(I)=I4YY(I)
        R4XX(I)=R4YY(I)
        R8XX(I)=R8YY(I)
        C8XX(I)=C8YY(I)
        C16XX(I)=C16YY(I)
        L4XX(I)=L4YY(I)
   10 CONTINUE

      WRITE(6,*) ' I4 DATA =  ',I4XX
      WRITE(6,*) ' R4 DATA =  ',R4XX
      WRITE(6,*) ' R8 DATA =  ',R8XX
      WRITE(6,*) ' C8 DATA =  ',C8XX
      WRITE(6,*) ' C16 DATA =  ',C16XX
      WRITE(6,*) ' L4 DATA =  ',L4XX
      STOP
      END
