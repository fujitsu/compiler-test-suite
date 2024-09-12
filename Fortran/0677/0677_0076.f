      LOGICAL*4 A(1000),B(1000),C(1000),D(1000),E(1000),F(1000)
      LOGICAL*4 G(1000),H(1000),I(1000),J(1000),K(1000),L(1000)
      INTEGER*4 FF/500/
      DATA A/1000*.FALSE./
      DATA B/1000*.FALSE./
      DATA C/1000*.FALSE./
      DATA D/1000*.FALSE./
      DATA E/1000*.FALSE./
      DATA F/1000*.FALSE./
      DATA G/1000*.FALSE./
      DATA H/1000*.FALSE./
      DATA I/1000*.FALSE./
      DATA J/1000*.FALSE./
      DATA K/1000*.FALSE./
      DATA L/1000*.FALSE./
      DO 10 M=1,1000
         B(M)=.NOT.(A(M).OR.(B(M).OR.C(M))).OR.(D(M).OR..NOT.E(M))
     *      .OR.(.NOT.L(M).AND.H(M)).OR.F(M).OR.G(M).OR.H(M)
         IF(M.GT.500) THEN
         A(M)=.NOT.A(M)
         B(M)=A(M).OR.B(M)
         C(M)=(A(M).OR.B(M).AND.C(M)).OR.L(M)
         D(M)=A(M).AND.B(M).OR..NOT.C(M).AND.D(M).AND..NOT.H(M)
         E(M)=A(M).OR.B(M).AND.C(M).OR.D(M).AND.E(M)
         F(M)=A(M).OR.B(M).AND.C(M).OR.D(M).OR.E(M).OR.F(M)
         G(M)=A(M).OR.B(M).OR.C(M).OR.D(M).OR.E(M).OR.F(M).OR.G(M)
         H(M)=.NOT.(A(M).OR.(B(M).OR.C(M))).OR.(D(M).OR..NOT.E(M))
     *      .OR..NOT.L(M).AND.F(M)
         ENDIF
         K(M)=.NOT.(A(M).OR.(B(M).OR.C(M))).OR.(D(M).OR..NOT.E(M))
     *      .OR..NOT.L(M).AND.H(M)
         IF(FF.EQ.500) THEN
         F(M)=.NOT.(A(M).OR.(B(M).OR.C(M))).OR.(D(M).OR..NOT.E(M))
     *      .OR.(.NOT.L(M).AND.H(M)).OR.F(M).OR.G(M).OR.H(M)
         ENDIF
   10 CONTINUE
      WRITE(6,*) A(1),B(1),C(1),D(1),E(1),F(1),G(1),H(1),I(1),J(1),K(1)
      STOP
      END
