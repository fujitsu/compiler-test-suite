REAL*8 A(10),B(10),C(10),D(10)

    DO i=1,10
      C(i)=i**i
      D(i)=3**i
      A(i)=SIN(C(i))

      B(i)=A(i)+1
      B(i)=SIN(D(i))
    ENDDO

WRITE(*,*)"A=",A
WRITE(*,*)"B=",B
WRITE(*,*)"C=",C
WRITE(*,*)"D=",D

END
