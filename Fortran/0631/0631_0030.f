      COMMON/COM/ N99,N39,N398,N40,N30,N29
      CALL DUMMY
      CALL SUB
      END
      SUBROUTINE DUMMY
      END
      SUBROUTINE SUB
      COMMON/COM/ N99,N39,N398,N40,N30,N29
      REAL*8 H004(100),P004(100),Q004(100)
      REAL*8 R004(4000),S004(4000),T004(4000)
      REAL*8 H005(3,3),P005(3,3),Q005(3,3)
      REAL*8 H006(2,3000,1),P006(2,3000,1,1,1,1)
      REAL*8                  Q006(2,1,3000,1,1,1,2)
      REAL*8 R005(3000,2),S005(3000,2),T005(3000,1)
      REAL*8 U004,U005
      DATA  H004,P004,Q004/100*4.0, 100*2.0, 100*3.0/
      DATA  R004,S004,T004/4000*4.0, 4000*2.0, 4000*3.0/
      DATA  H005,P005,Q005/9*4.0, 9*2.0, 9*3.0/
      DATA  R005,S005,T005/6000*4.0, 6000*2.0, 3000*3.0/
      DATA  H006,P006,Q006/6000*4.0, 6000*2.0, 12000*3.0/
      N1=N99-98
      N3=N99-96
      DO 131 I=1,N99
        U004   =H004(I)
        H004(I)=P004(I)+Q004(I)
  131 CONTINUE
      DO 132 I=3,N99
        U004   =P004(I)*Q004(I)
        H004(I)=U004
        P004(I)=H004(I)/Q004(I)
        H004(I)=U004
        H004(I)=P004(I)/Q004(I)
  132 CONTINUE
      DO 133 I=1,N99-2
        H004(I)=MOD(P004(I),Q004(I))
  133 CONTINUE
      DO 134 I=N99-98,N39
        U004   =R004(I)
        R004(I)=S004(I)+T004(I)
  134 CONTINUE
      DO 135 I=3,N398
        U004   =S004(I)*T004(I)
        R004(I)=U004
        S004(I)=R004(I)/T004(I)
        R004(I)=U004
        R004(I)=S004(I)/T004(I)
  135 CONTINUE
      DO 136 I=1,N40
        R004(I)=MOD(S004(I),T004(I))
  136 CONTINUE
      DO 137 I=30000-N29,2
        U005   =H005(1,I)
        H005(2,I)=U005+Q005(1,I)
  137 CONTINUE
      DO 138 I=3,N40*99-40000*99+3
        U005   =P005(1,I)*Q005(1,I)
        H005(2,I)=U005
        P005(3,I)=H005(2,I)/Q005(1,I)
        H005(2,I)=U005
        H005(1,I)=P005(3,I)/Q005(3,I)
  138 CONTINUE
      DO 139 I=N1,N3
        H005(1,I)=MOD(P005(1,I),Q005(1,I))
  139 CONTINUE
      DO 140 I=N1,3000
        U005   =S005(I,1)
        R005(I,2)=U005+T005(I,1)
  140 CONTINUE
      DO 141 I=3,N29
        U005   =S005(I,2)*T005(I,1)
        R005(I,2)=U005
        S005(I,1)=R005(I,2)/T005(I,1)
        R005(I,1)=U005
        R005(I,1)=S005(I,1)/T005(I,1)
  141 CONTINUE
      DO 142 I=1,N30
        R005(I,1)=MOD(S005(I,2),T005(I,1))
  142 CONTINUE
      DO 143 I=1,N30
        U004   =H006(2,I,1)
        H006(1,I,1)=U004+Q006(2,1,I,1,1,1,1)
  143 CONTINUE
      DO 144 I=N1,3000
        U004   =P006(1,I,1,1,1,1)*Q006(1,1,I,1,1,1,2)
        H006(2,I,1)=U004
        P006(1,I,1,1,1,1)=H006(2,I,1)/Q006(1,1,I,1,1,1,1)
        U004   =P006(1,I,1,1,1,1)*Q006(1,1,1,1,1,1,2)
        H006(1,I,1)=U004
        H006(2,I,1)=P006(2,I,1,1,1,1)/Q006(2,1,1,1,1,1,1)
  144 CONTINUE
      DO 145 I=1,N30
        H006(1,I,1)=MOD(P006(2,I,1,1,1,1),Q006(1,1,I,1,1,1,1))
  145 CONTINUE
      WRITE(6,*) (H004(I),I=1,100,10)
      WRITE(6,*) (R004(I),I=1,1000,100)
      WRITE(6,*)  H005
      WRITE(6,*) ((R005(J,I),J=1,3000,100),I=1,2)
      WRITE(6,*) (((H006(K,J,I),J=1,3000,300),I=1,1),K=1,2)
      END
      BLOCK DATA
      COMMON/COM/ N99,N39,N398,N40,N30,N29
      DATA  N99,N39,N398,N40,N30,N29/99,3990,3998,4000,3000,2999/
      END