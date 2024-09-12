         REAL A001(258)
         REAL B001(258)
         REAL C001(258)
         REAL D001(258)
         REAL E001(258)
         REAL A002(258)
         REAL B002(258)
         REAL C002(258)
         REAL D002(258)
         REAL E002(258)

         DO 10 I = 1 , 258
           A001(I) = 4.0 + I
           B001(I) = 4.0 + I
           C001(I) = 4.0 + I
           D001(I) = 4.0 + I
           E001(I) = 4.0 + I
 10      CONTINUE

         CALL SUB1(258,A001,B001,C001,D001,E001,
     E                 A002,B002,C002,D002,E002)
         END
         SUBROUTINE SUB1(N,A,B,C,D,E,AX,BX,CX,DX,EX)
         REAL A(N),B(N),C(N),D(N),E(N)
         REAL AX(N),BX(N),CX(N),DX(N),EX(N)
         REAL X001(258),X002(258),X003(258),X004(258)
     E       ,X005(258)

         DO 10 I = 1 , N
           AX(I) = 4.0 + I + A(I) - B(I)
           BX(I) = 3.0 + I - C(I) + D(I)
           CX(I) = 2.0 + I + A(I) - C(I)
           DX(I) = 1.0 + I + B(I) + D(I)
           EX(I) = 5.0 + I + A(I) - B(I)
 10      CONTINUE
         PRINT *,AX,BX,CX,DX,EX

         DO 11 I = 1 , N
           AX(I)   = 9.0 + I + A(I) - B(I)
           BX(I)   = 8.0 - I - C(I) + D(I)
           CX(I)   = 7.0 + I + A(I) - C(I)
           DX(I)   = 6.0 - I + B(I) + D(I)
           EX(I)   = 5.0 + I + A(I) - B(I)
           X001(I) = 4.0 - I - C(I) + D(I) - EX(I)
           X002(I) = 3.0 + I + A(I) - C(I) + DX(I)
           X003(I) = 2.0 - I + B(I) + D(I) - CX(I)
           X004(I) = 1.0 + I - E(I) - A(I) + BX(I)
           X005(I) = 10. - I - D(I) - D(I) - AX(I)
 11      CONTINUE
         PRINT *,X001,X002,X003,X004,X005
         END
