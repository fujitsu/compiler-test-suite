  !             CVCT5905            LEVEL=1        DATE=84.02.02
  !***< CVCT5905 >***
  ! CHANGED DO INDEX
  ! K,J,I    -->  <<I,J>> , K,I,J
  !****
  type st1
     LOGICAL L1,L2,L3,L4,LZ
     LOGICAL LT(20,20),LF(20,20),LX(20,20)
     LOGICAL X1(20,20),X2(20,20),X3(20,20),X4(20,20)
     LOGICAL T1(30,30),T2(30,30),T3(30,30),T4(30,30)
  end type st1
  type(st1) :: str
  DATA str%L1,str%L2,str%L3,str%L4/3*.FALSE.,.TRUE./
  DATA str%LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./
  DATA str%LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./
  DATA str%LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./
  DATA str%T1,str%T2,str%T3,str%T4/2700*.TRUE.,900*.FALSE./
  !****
  DO  I=1,20
     DO  J=1,20
        DO  K=1,5
           IF(str%LT(I,J)) THEN
              str%LT(I,J)=.NOT.str%LT(I,J)
           ENDIF
           IF(str%LF(I,J)) THEN
              str%LF(I,J)=.NOT.str%LF(I,J)
           ENDIF
        enddo
     enddo
  enddo
  !****
  DO  K=1,5
     DO  J=1,20,1
        DO  I=1,20
           str%L1=str%T1(J,I)
           str%L2=str%T2(J+1,I)
           str%L3=str%T3(J+1,I)
           str%L4=str%T4(J+1,I)
           IF((.NOT.str%L3).AND.str%L4) THEN
              IF((.NOT.str%L1).AND.str%L2) THEN
                 str%LF(J,I)=.FALSE.
              ELSE
                 str%LF(J,I)=.TRUE.
              ENDIF
              GO TO 11
           ENDIF
           IF((.NOT.str%L4).AND.str%L3) THEN
              IF(str%L1.AND.str%L2) THEN
                 str%LF(J,I)=.FALSE.
              ELSE
                 str%LF(J,I)=.TRUE.
              ENDIF
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
           !            PRINT *,str%L1,str%L2,str%L3,str%L4
           str%X1(J,I)=str%L1
           str%X2(J,I)=str%L2
           str%X3(J,I)=str%L3
           str%X4(J,I)=str%L4
           IF((.NOT.str%L2).AND.(.NOT.str%L3).AND.str%L4) THEN
              str%T3(J+1,I)=.TRUE.
              str%T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L2).AND.str%L3.AND.(.NOT.str%L4)) THEN
              str%T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L2).AND.str%L3.AND.str%L4) THEN
              str%T2(J+1,I)=.TRUE.
              str%T3(J+1,I)=.FALSE.
              str%T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L1).AND.str%L2.AND.(.NOT.str%L3).AND.(.NOT.str%L4)) THEN
              str%T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L1).AND.str%L2.AND.(.NOT.str%L3).AND.str%L4) THEN
              str%T3(J+1,I)=.TRUE.
              str%T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L1).AND.str%L2.AND.str%L3.AND.(.NOT.str%L4)) THEN
              str%T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L2).AND.(.NOT.str%L3).AND.(.NOT.str%L4)) THEN
              str%T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.str%L1).AND.str%L2.AND.str%L3.AND.str%L4) THEN
              str%T1(J,I)=.TRUE.
              str%T2(J+1,I)=.FALSE.
              str%T3(J+1,I)=.FALSE.
              str%T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF(str%L2.AND.(.NOT.str%L3).AND.(.NOT.str%L4)) THEN
              str%T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF(str%L2.AND.(.NOT.str%L3).AND.str%L4) THEN
              str%T3(J+1,I)=.TRUE.
              str%T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF(str%L2.AND.str%L3.AND.(.NOT.str%L4)) THEN
              str%T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF(str%L1.AND.str%L2.AND.str%L3.AND.str%L4) THEN
              str%T1(J,I)=.FALSE.
              str%T2(J+1,I)=.FALSE.
              str%T3(J+1,I)=.FALSE.
              str%T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           str%LZ=str%L1.OR.str%L2.OR.str%L3.OR.str%L4
           IF(str%LZ) THEN
              GO TO 12
           ELSE
              str%T1(J,I)=.FALSE.
              str%T2(J+1,I)=.FALSE.
              str%T3(J+1,I)=.FALSE.
              str%T4(J+1,I)=.TRUE.
           ENDIF
12         CONTINUE
           str%LX(J,I)=str%LT(J,I).AND.str%LF(J,I)
           IF(str%LX(J,I)) THEN
              str%LX(J,I)=.NOT.str%LT(J,I)
           ELSE
              str%LX(J,I)=.NOT.str%LF(J,I)
           ENDIF
10         CONTINUE
20         CONTINUE
30         CONTINUE
        enddo
     enddo
  enddo
  write(6,*) str%X1
  write(6,*) str%X2
  write(6,*) str%X3
  write(6,*) str%X4
  write(6,*) str%LX
  write(6,*) str%LF
END program
