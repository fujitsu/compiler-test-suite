      INTEGER*4  I4A(10),I4B(10),L(10)
      REAL*4     R4A(10),R4B(10)
      REAL*8     R8A(10),R8B(10)
      COMPLEX*8  C8A(10),C8B(10)
      COMPLEX*16 C16A(10),C16B(10)
      DATA       I4A/1,3,5,6,2,4,9,10,7,8/
      DATA       I4B/2,4,6,8,10,1,3,5,7,9/
      DATA       L/10,9,8,7,6,5,4,3,2,1/
      DATA       R4A/1,3,5,6,2,4,9,10,7,8/
      DATA       R4B/2,4,6,8,10,1,3,5,7,9/
      DATA       R8A/1,3,5,6,2,4,9,10,7,8/
      DATA       R8B/2,4,6,8,10,1,3,5,7,9/
      DATA       C8A/5*(0.,1.),5*(2.,4.)/
      DATA       C8B/5*(0.,1.),5*(2.,4.)/
      DATA       C16A/5*(0.,0.),5*(1.,3.)/
      DATA       C16B/5*(0.,0.),5*(1.,3.)/
      DO 10 I=1,10
        I4A(L(I))=I4B(I)
        R4A(L(I))=R4B(I)
        R8A(L(I))=R8B(I)
        C8A(L(I))=C8B(I)
        C16A(L(I))=C16B(I)
   10 CONTINUE
      WRITE(6,*) I4A
      WRITE(6,*) R4A
      WRITE(6,*) R8A
      WRITE(6,*) C8A
      WRITE(6,*) C16A
      STOP
      END
