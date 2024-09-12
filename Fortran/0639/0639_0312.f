       REAL A(100),B(100),C(100),D(100)
       N=100
       DO 1 I=1,100
        A(I)=4.0D0
        B(I)=3.0
        C(I)=2.0
        D(I)=1.0
 1     CONTINUE
       M=10
       CALL SUB(A,B,C,D,N,M)
       PRINT *,A,B,C
       END
       SUBROUTINE SUB(A,B,C,D,N,M)
       REAL A(N),B(N),C(N),D(N)
       S =0.0D0
       S2=0.0D0
       DO 1 J=2,M-1
       DO 1 I=2,N
        A(I)=A(I-1)+B(I)
        B(I)=B(I-1)+C(I)
        S=S+C(I)
 1     CONTINUE
       DO 3 J=2,M
       DO 2 I=2,N
        A(I)=A(I-1)-B(I)
        B(I)=B(I-1)+C(I)
        C(I)=C(I-1)-D(I)
        D(I)=D(I-1)+I-99.0
        S2=S2+B(I)
 2     CONTINUE
 3     CONTINUE
       if( abs((s-1584)/s ) .gt. 0.1e-5 ) then
         print *,' NG 1 '
       end if
       if( abs((s2-2.30117837e+09)/s2 ) .gt. 0.1e-5 ) then
         print *,' NG 2 '
       end if

       RETURN
       END
