  !             CVCT5903            LEVEL=1        DATE=84.02.02
  !***< CVCT5903 >***
  ! CHANGED DO INDEX
  ! K,J,I    -->  <<I,J>>
  !****
  type st1
     REAL A(20,20,5),B(20,20,5),C(20,20,5)
     REAL R(20,20,5)
     LOGICAL L1,L2,L3,L4,LZ
     LOGICAL LT(20,20),LF(20,20),LX(20,20)
     LOGICAL LL1(30,30),LL2(30,30),LL3(30,30),LL4(30,30)
  end type st1
  type(st1) :: str
  DATA str%A,str%B,str%C/2000*8.0,2000*1.0,2000*2.0/
  DATA str%R/2000*2.2/
  DATA  D1,D2,D5,DA/1.0D0,2.0D0,5.0D0,10.0D0/
  DATA str%LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./
  DATA str%LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./
  DATA str%LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./
  DATA str%LL1,str%LL2,str%LL3,str%LL4/2700*.TRUE.,900*.FALSE./
  !****
  DO  I=1,20
     DO  J=1,20
        DO  K=1,5
           S1=D1
           S2=D2
           str%A(I,J,K)=S1
           str%B(I,J,K)=S2
           str%C(I,J,K)=str%A(I,J,K)+str%B(I,J,K)
           IF(str%A(I,J,K).GT.D5) THEN
              str%LT(I,J)=.NOT.str%LT(I,J)
              S1 = D5
           ENDIF
           IF(str%B(I,J,K).GT.DA) THEN
              str%LF(I,J)=.NOT.str%LF(I,J)
              S2 = DA
           ENDIF
        enddo
     enddo
  enddo
  !****
  DO  K=1,5
     DO  J=1,20,1
        DO  I=1,20
           str%L1=str%LL1(J,I)
           str%L2=str%LL2(J,I)
           str%L3=str%LL3(J,I)
           str%L4=str%LL4(J,I)
           IF((.NOT.str%L3).AND.str%L4) THEN
              IF((.NOT.str%L1).AND.str%L2) THEN
                 str%A(J,I,K)=str%A(J,I,K)-str%C(J,I,K)
                 str%LF(J,I)=.FALSE.
              ELSE
                 str%LF(J,I)=.TRUE.
              ENDIF
              GO TO 11
           ENDIF
           IF((.NOT.str%L4).AND.str%L3) THEN
              IF(str%L1.AND.str%L2) THEN
                 str%B(J,I,K)=str%B(J,I,K)-str%A(J,I,K)
                 str%LF(J,I)=.FALSE.
              ELSE
                 str%LF(J,I)=.TRUE.
              ENDIF
              str%R(J,I,K)=str%A(J,I,K)-str%C(J,I,K)*str%B(J,I,K)
           ENDIF
           IF((.NOT.str%L4).AND.(.NOT.str%L3)) THEN
              IF(str%L1.AND.str%L2) THEN
                 str%LF(J,I)=.FALSE.
              ELSE
                 str%LF(J,I)=.TRUE.
              ENDIF
              GO TO 11
           ENDIF
11         CONTINUE
           IF((.NOT.str%L2).AND.(.NOT.str%L3).AND.str%L4) THEN
              str%LL3(J+1,I)=.TRUE.
              str%LL4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L2).AND.str%L3.AND.(.NOT.str%L4)) THEN
              str%LL4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L2).AND.str%L3.AND.str%L4) THEN
              str%LL2(J+1,I)=.TRUE.
              str%LL3(J+1,I)=.FALSE.
              str%LL4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L1).AND.str%L2.AND.(.NOT.str%L3).AND.(.NOT.str%L4)) THEN
              str%LL4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L1).AND.str%L2.AND.(.NOT.str%L3).AND.str%L4) THEN
              str%LL3(J+1,I)=.TRUE.
              str%LL4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L1).AND.str%L2.AND.str%L3.AND.(.NOT.str%L4)) THEN
              str%LL4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L2).AND.(.NOT.str%L3).AND.(.NOT.str%L4)) THEN
              str%LL4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L1).AND.str%L2.AND.str%L3.AND.str%L4) THEN
              str%LL1(J+1,I)=.TRUE.
              str%LL2(J+1,I)=.FALSE.
              str%LL3(J+1,I)=.FALSE.
              str%LL4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF(str%L2.AND.(.NOT.str%L3).AND.(.NOT.str%L4)) THEN
              str%LL4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF(str%L2.AND.(.NOT.str%L3).AND.str%L4) THEN
              str%LL3(J+1,I)=.TRUE.
              str%LL4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF(str%L2.AND.str%L3.AND.(.NOT.str%L4)) THEN
              str%LL4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF(str%L1.AND.str%L2.AND.str%L3.AND.str%L4) THEN
              str%LL1(J+1,I)=.FALSE.
              str%LL2(J+1,I)=.FALSE.
              str%LL3(J+1,I)=.FALSE.
              str%LL4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           str%LZ=str%L1.OR.str%L2.OR.str%L3.OR.str%L4
           IF(str%LZ) THEN
              GO TO 12
           ELSE
              str%LL1(J+1,I)=.FALSE.
              str%LL2(J+1,I)=.FALSE.
              str%LL3(J+1,I)=.FALSE.
              str%LL4(J+1,I)=.TRUE.
           ENDIF
12         CONTINUE
           str%LX(J,I)=str%LT(J,I).AND.str%LF(J,I)
           IF(str%LX(J,I)) THEN
              str%LX(J,I)=.NOT.str%LT(J,I)
              str%R(J,I,K)=MAX(str%R(J,I,K),str%B(J,I,K),str%A(J,I,K))
           ELSE
              str%LX(J,I)=.NOT.str%LF(J,I)
              str%R(J,I,K)=MIN(str%R(J,I,K),str%B(J,I,K),str%A(J,I,K))
           ENDIF
10         CONTINUE
20         CONTINUE
30         CONTINUE
        enddo
     enddo
  enddo
  write(6,*) str%LF
  write(6,*) str%LX
  write(6,1) str%R
1 format(10f8.3)
END program
