  !             CVCT5906            LEVEL=1        DATE=84.02.03
  !***< CVCT5906 >***
  ! CHANGED DO INDEX
  ! K,J,I    -->  <<I,J>>
  !****
  LOGICAL L1,L2,L3,L4,LZ
  DATA L1,L2,L3,L4/3*.FALSE.,.TRUE./
  LOGICAL X1(20,20),X2(20,20),X3(20,20),X4(20,20)
  LOGICAL T1(30,30),T2(30,30),T3(30,30),T4(30,30)
  DATA T1,T2,T3,T4/2700*.TRUE.,900*.FALSE./
  type st1
     LOGICAL LT(20,20),LF(20,20),LX(20,20)
     REAL*8 A1(20,5),A2(21,21),A3(20,20,5)
     REAL*8 B1(20,5),B2(20,20),B3(20,20,5)
     REAL*8 C1(20,5),C2(21,21),C3(20,20,5)
     REAL*8 R1(20,5),R2(20,20),R3(20,20,5)
  end type st1
  type(st1) :: str
  DATA str%A1,str%A2,str%A3/100*3.0D0,441*2.0D0,2000*1.0D0/
  DATA str%B1,str%B2,str%B3/100*1.0D0,400*2.0D0,2000*3.0D0/
  DATA str%C1,str%C2,str%C3/100*2.0D0,441*1.0D0,2000*3.0D0/
  DATA str%R1,str%R2,str%R3/100*3.0D0,400*1.0D0,2000*2.0D0/
  DATA str%LT/100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./
  DATA str%LF/100*.FALSE.,100*.TRUE.,100*.FALSE.,100*.TRUE./
  DATA str%LX/100*.TRUE.,100*.TRUE.,100*.FALSE.,100*.FALSE./
  DATA N5/5/,N20,NN1/20,1/
  !****<< NO.1 >>****
  DO  K=1,5
     DO  J=1,N20
        DO  I=1,N20
           str%R2(J,I)=str%B2(J,I)-str%C2(J,I)
           str%R3(J,I,K)=str%B3(J,I,K)-str%A3(J,I,K)
           IF(str%R2(J,I).GT.str%R3(J,I,K)) THEN
              str%LT(J,I)=.NOT.str%LT(J,I)
              str%R2(J,I)=str%B2(J,I)-str%C2(J,I)
           ELSE
              IF(str%R2(J,I).LE.str%R3(J,I,K)) THEN
                 str%LF(J,I)=.NOT.str%LF(J,I)
                 str%R3(J,I,K)=str%B3(J,I,K)-str%A3(J,I,K)
              ENDIF
           ENDIF
        enddo
     enddo
  enddo
  !****<< NO.2 >>****
  DO  K=1,5
     DO  I=1,N20,NN1
        DO  J=1,N20,1
           L1=T1(J,I)
           L2=T2(J+1,I)
           L3=T3(J+1,I)
           L4=T4(J+1,I)
           IF(I.LE.N5) THEN
              str%R1(J,I)=str%B1(J,I)+str%C1(J,I)-str%A1(J,I)
           ENDIF
           IF((.NOT.L3).AND.L4) THEN
              IF((.NOT.L1).AND.L2) THEN
                 str%R2(J,I)=str%A2(J,I)-str%B2(J,I)
              ELSE
                 str%R2(J,I)=str%C2(J,I)-str%B2(J,I)
              ENDIF
           ELSE
              IF((.NOT.L4).AND.L3) THEN
                 IF(L1.AND.L2) THEN
                    str%R3(J,I,K)=str%A3(J,I,K)+str%B3(J,I,K)
                 ELSE
                    str%R3(J,I,K)=str%C3(J,I,K)-str%B3(J,I,K)
                 ENDIF
              ELSE
                 IF((.NOT.L4).AND.(.NOT.L3)) THEN
                    IF(L1.AND.L2) THEN
                       str%A2(J+1,I)=str%B2(J+1,I)-str%B3(J,I,K)
                    ELSE
                       str%C2(J+1,I)=str%A2(J+1,I)-str%B3(J,I,K)
                    ENDIF
                 ENDIF
              ENDIF
           ENDIF
11         CONTINUE
           !**< FLAG SET >**
           X1(J,I)=L1
           X2(J,I)=L2
           X3(J,I)=L3
           X4(J,I)=L4
           IF((.NOT.L2).AND.(.NOT.L3).AND.L4) THEN
              T3(J+1,I)=.TRUE.
              T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.L2).AND.L3.AND.(.NOT.L4)) THEN
              T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.L2).AND.L3.AND.L4) THEN
              T2(J+1,I)=.TRUE.
              T3(J+1,I)=.FALSE.
              T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.L1).AND.L2.AND.(.NOT.L3).AND.(.NOT.L4)) THEN
              T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.L1).AND.L2.AND.(.NOT.L3).AND.L4) THEN
              T3(J+1,I)=.TRUE.
              T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF((.NOT.L1).AND.L2.AND.L3.AND.(.NOT.L4)) THEN
              T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.L2).AND.(.NOT.L3).AND.(.NOT.L4)) THEN
              T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF((.NOT.L1).AND.L2.AND.L3.AND.L4) THEN
              T1(J,I)=.TRUE.
              T2(J+1,I)=.FALSE.
              T3(J+1,I)=.FALSE.
              T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF(L2.AND.(.NOT.L3).AND.(.NOT.L4)) THEN
              T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF(L2.AND.(.NOT.L3).AND.L4) THEN
              T3(J+1,I)=.TRUE.
              T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           IF(L2.AND.L3.AND.(.NOT.L4)) THEN
              T4(J+1,I)=.TRUE.
              GO TO 12
           ENDIF
           IF(L1.AND.L2.AND.L3.AND.L4) THEN
              T1(J,I)=.FALSE.
              T2(J+1,I)=.FALSE.
              T3(J+1,I)=.FALSE.
              T4(J+1,I)=.FALSE.
              GO TO 12
           ENDIF
           LZ=L1.OR.L2.OR.L3.OR.L4
           IF(LZ) THEN
              GO TO 12
           ELSE
              T1(J,I)=.FALSE.
              T2(J+1,I)=.FALSE.
              T3(J+1,I)=.FALSE.
              T4(J+1,I)=.TRUE.
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
  write(6,1) str%R1
  write(6,*)
  write(6,1) str%R2
  write(6,*)
  write(6,1) str%R3
  write(6,*)
  write(6,*) str%LX
  write(6,*)
  write(6,*) str%LF
1 format(10f8.3)

END program
