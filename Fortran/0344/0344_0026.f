      INTEGER*4    I4A(10),I4B(10),I4C(10)
      REAL*4       R4A(10),R4B(10),R4C(10)
      REAL*8       R8A(10),R8B(10),R8C(10)
      COMPLEX*8    C8A(10),C8B(10),C8C(10)
      COMPLEX*16   C16A(10),C16B(10),C16C(10)

      DATA         I4A/10*0/,I4B/10*2/,I4C/10*3/
      DATA         R4A/10*0./,R4B/10*2./,R4C/10*3./
      DATA         R8A/10*0./,R8B/10*2./,R8C/10*3./
      DATA         C8A/10*(0.,0.)/,C8B/10*(2.,2.)/,C8C/10*(3.,3.)/
      DATA         C16A/10*(0.,0.)/,C16B/10*(2.,2.)/,C16C/10*(3.,3.)/

      DO 10 I=1,10
        I4A(I)=I4B(I)*I4C(I)
        R4A(I)=R4B(I)*R4C(I)
        R8A(I)=R8B(I)*R8C(I)
        C8A(I)=C8B(I)*C8C(I)
        C16A(I)=C16B(I)*C16C(I)
   10 CONTINUE

      WRITE(6,*) ' I4 DATA =  ',I4A
      WRITE(6,*) ' R4 DATA =  ',R4A
      WRITE(6,*) ' R8 DATA =  ',R8A
      WRITE(6,*) ' C8 DATA =  ',C8A
      WRITE(6,*) ' C16 DATA =  ',C16A
      STOP
      END
