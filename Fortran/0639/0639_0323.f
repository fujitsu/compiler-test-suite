       REAL A(100),B(100),C(100),D(100)
       DATA A,B,C,D/100*0.01,100*0.02,100*0.03,100*0.04/
       N=100
       M=10
       S=0.0
       S2=0.0
       DO 3 J=2,M
       DO 1 I=J,N-1
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        S=S+C(I)
 1     CONTINUE
       DO 2 I=J,N
        A(I)=A(I-1)-B(I)
        B(I)=B(I-1)+C(I)
        C(I)=C(I-1)+D(I)
        D(I)=D(I-1)-I-99.0
        S2=S2+B(I)
 2     CONTINUE
 3     CONTINUE

       if( abs((s-(-141669472.))/s ) .gt. 0.1e-5 ) then
         print *,' NG 1 '
       end if
       if( abs((s2-(-3.58373478e+09))/s2 ) .gt. 0.1e-5 ) then
         print *,' NG 2 '
       end if

       PRINT *,A,B,C
       STOP
       END
