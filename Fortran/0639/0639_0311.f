       REAL A(100),B(100),C(100),D(100)
       N=100
       DO 1 I=1,100
        A(I)=1.0100D0
        B(I)=2.0200D0
        C(I)=3.0300D0
        D(I)=4.0400D0
 1     CONTINUE
       M=10
       CALL SUB(A,B,C,D,N,M)
       PRINT *,A,B,C
       END
       SUBROUTINE SUB(A,B,C,D,N,M)
       REAL A(N),B(N),C(N),D(N)
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
        C(I)=C(I-1)-D(I)-99.0
        D(I)=D(I-1)+I-99.0
        S2=S2+B(I)
 2     CONTINUE
 3     CONTINUE

       if( abs((s-78267296)/s ) .gt. 0.1e-5 ) then
	 print *,' NG 1 '
       end if
       if( abs((s2-2.16174336e+09)/s2 ) .gt. 0.1e-5 ) then
	 print *,' NG 2 '
       end if

       RETURN
       END
