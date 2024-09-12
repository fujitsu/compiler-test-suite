       REAL A(10),B(10),C(10),D(10)
       DATA A/1.,2.,3.,4.,5.,6.,7.,8.,9.,10./
       DATA B/2.,3.,4.,5.,6.,7.,8.,9.,1.,1./
       DATA C/3.,4.,5.,6.,7.,8.,9.,1.,2.,2./
       DATA D/4.,5.,6.,7.,8.,9.,1.,2.,3.,3./
       LOGICAL L(10),LL(10)
       DATA L,LL/20*.FALSE./
       L(1)=.TRUE.
       LL(1)=.TRUE.
       LL(3)=.TRUE.
       LL(5)=.TRUE.
       LL(7)=.TRUE.
       DO 1 I=2,10
        A(I)=I+B(I)
 1     CONTINUE
       DO 2 I=2,8
        IF(LL(5)) THEN
         B(I)=I-1.0
        ENDIF
 2     CONTINUE
       DO 3 I=2,10
        IF(L(1)) THEN
         D(I)=C(I)*1.0
        ENDIF
 3     CONTINUE
       DO 4 I=2,8
         C(I)=2.0-I
 4     CONTINUE
       PRINT *,A,B,C,D,L,LL
       END
