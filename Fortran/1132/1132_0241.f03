  !             CVCT5912            LEVEL=2        DATE=89.10.16
  !***<< CVCT5912 >>***
  ! CHANGED DO INDEX AND DO-LOOP DIVISION
  !
  !********************
  type st1
     REAL A2(505,10),B2(505,10),R2(505,10)
     LOGICAL FLAG(5050),FX(505,10),NFLAG(5050)
  end type st1
  type(st1) :: str
  DATA str%A2,str%B2/5050*1.0D0,5050*2.0D0/,str%R2/5050*0./
  DATA str%NFLAG/5050*.TRUE./,str%FLAG,str%FX/10100*.FALSE./
  !****
  !****             1      2             3          4
  !**** FLAG(?) --> ON,OFF,ON,ON,OFF,OFF,ON,ON,ON,OFF,OFF,OFF,......
  !****
  IDX=1
  IA1=1
  IA2=1
  DO  M=1,100
     DO  I=1,M
        str%FLAG(IDX)=.TRUE.
        IDX=IDX+1
        IF(IA1.LE.505) THEN
           IF(IA2.LE.10) THEN
              str%A2(IA1,IA2)=IDX*0.1D0
              str%B2(IA1,IA2)=IDX*0.05D0
           ENDIF
        ENDIF
        IA1=IA1+1
        IF(IA1.GE.505) THEN
           IA2=IA2+1
           IA1=1
        ENDIF
10      CONTINUE
     enddo
     ! **** ADD Z9927 **********
     IF ( IDX.GT.4050 ) IDX=1
     ! *************************
     DO  I=1,M
        str%FLAG(IDX)=.FALSE.
        IDX=IDX+1
        IA1=IA1+1
     enddo
20   CONTINUE
     !        IDX=IDX+M
30   CONTINUE
  enddo
  !****
  !****
  DO  K=1,505
     str%NFLAG(K)=.NOT.str%FLAG(K)
     DO  J=1,10
        DO  I=1,505
           IF(str%R2(I,J).GT.str%B2(I,J)) THEN
              IF(str%FLAG(K)) THEN
                 str%A2(I,J)=str%B2(I,J)+0.1D0
              ELSE
                 str%B2(I,J)=str%A2(I,J)-0.1D0
              ENDIF
              GO TO 56
           ELSE
              str%R2(I,J)=str%A2(I,J)-str%B2(I,J)
           ENDIF
           str%FX(I,J)=.FALSE.
           GO TO 66
56         str%FX(I,J)=.TRUE.
66         CONTINUE
           IF(str%FX(I,J)) str%R2(I,J)=-str%R2(I,J)
           IF(.NOT.str%FX(I,J)) str%R2(I,J)=str%R2(I,J)-0.2D0
50         CONTINUE
60         CONTINUE
        enddo
     enddo
  enddo
  !*****
  PRINT *,str%FLAG,str%NFLAG
  WRITE(6,*) str%FX
  WRITE(6,1) str%R2
  1 format(8f12.5)
END program
