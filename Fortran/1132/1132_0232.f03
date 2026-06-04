  !             CVCT5902            LEVEL=1        DATE=84.02.01
  !***< CVCT5902 >***
  ! CHANGED DO INDEX
  ! J,I,K    -->  <<I,J>>
  !****
  type st1
     REAL A(20,20,5),B(20,20,5),C(20,20,5)
     REAL R(20,20,5)
     LOGICAL LT(20,20),LF(20,20),LX(20,20)
  end type st1
  type(st1) :: str
  DATA str%A,str%B,str%C/2000*5.0,2000*2.0,2000*3.0/
  DATA str%R/2000*2.2/
  DATA  D1,D2,D5,DA/1.0D0,2.0D0,5.0D0,8.0D0/
  DATA str%LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./
  DATA str%LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./
  DATA str%LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./
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
           IF(.NOT.str%LF(K,K)) THEN
              IF(.NOT.str%LF(J,I)) THEN
                 str%A(J,I,K)=str%A(J,I,K)-str%C(J,I,K)
                 str%LF(J,I)=.FALSE.
              ENDIF
           ENDIF
           IF(str%LT(K,K)) THEN
              IF(.NOT.str%LT(J,I)) THEN
                 str%B(J,I,K)=str%B(J,I,K)-str%A(J,I,K)
                 str%LT(J,I)=.TRUE.
              ENDIF
              str%R(J,I,K)=str%A(J,I,K)-str%C(J,I,K)*str%B(J,I,K)
           ENDIF
           str%LX(J,I)=str%LT(J,I).AND.str%LF(J,I)
           IF(str%LX(J,I)) THEN
              str%R(J,I,K)=str%R(J,I,K)-1.0D0
              str%LX(J,I)=.NOT.str%LT(J,I)
           ELSE
              str%R(J,I,K)=str%R(J,I,K)+1.0D0
              str%LX(J,I)=.NOT.str%LF(J,I)
           ENDIF
10         CONTINUE
20         CONTINUE
30         CONTINUE
        enddo
     enddo
  enddo
  write(6,*) str%LX
  write(6,1) str%R
  1 format(10f8.3)
END program
