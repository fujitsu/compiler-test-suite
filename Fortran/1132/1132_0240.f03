  !             CVCT5911            LEVEL=1        DATE=84.02.04
  !***<< CVCT5911 >>***
  ! CHANGED DO INDEX AND DO-LOOP DIVISION
  !
  !********************
  type st1
     REAL A2(5,5),B2(5,5),R2(5,5)
     REAL A4(4,4,4,4),B4(4,4,4,4),R4(4,4,4,4)
     REAL R6(4,4,4,4,5,5)
     LOGICAL T2(5,5)
     LOGICAL T4(4,4,4,4)
     LOGICAL T6(4,4,4,4,5,5)
  end type st1
  type(st1) :: str
  !****
  DATA str%A2,str%B2/25*1.0D0,25*2.0D0/
  DATA str%A4,str%B4/256*0.030D-2,256*0.006D-2/
  DATA str%R6/6400*0.0040D-2/
  DATA str%T2/5*.TRUE.,10*.FALSE.,5*.TRUE.,5*.FALSE./
  DATA str%T4/64*.TRUE.,64*.FALSE.,64*.TRUE.,64*.FALSE./
  DATA str%T6/700*.TRUE.,800*.FALSE.,800*.TRUE.,700*.FALSE. &
       ,700*.TRUE.,800*.FALSE.,800*.TRUE.,700*.FALSE. &
       ,100*.TRUE.,100*.FALSE.,100*.TRUE.,100*.FALSE./
  ! u2 add
  str%R2 = 0
  !****
  DO  M=1,3
     DO  N=1,5
        str%A2(N,M)=N*0.01
        IF(str%T2(N,M)) THEN
           str%A2(N,M)=str%B2(N,M)-1.0D0
           str%T2(N,M)=.NOT.str%T2(N,M)
        ELSE
           str%B2(N,M)=str%A2(N,M)+1.0D0
        ENDIF
        str%R2(N,M)=str%A2(N,M)-str%B2(N,M)
        DO  L=1,4
           DO  J=1,4
              DO  I=1,4
                 DO  K=1,4
                    str%T4(I,J,K,L)=.NOT.str%T6(I,J,K,L,N,M)
                    IF(str%T4(I,J,K,L)) THEN
                       str%A4(I,J,K,L)=-str%B4(I,J,K,L)
                    ELSE
                       str%B4(I,J,K,L)=-str%A4(I,J,K,L)
                    ENDIF
                    str%R4(I,J,K,L)=str%A4(I,J,K,L)-str%B4(I,J,K,L)
                    IF(str%R6(I,J,K,L,N,M).GT.str%B4(I,J,K,L)) THEN
                       str%R4(I,J,K,L)=-str%R6(I,J,K,L,N,M)
                       GO TO 11
                    ELSE
                       IF(.NOT.str%T6(I,J,K,L,N,M)) THEN
                          str%T4(I,J,K,L)=.NOT.str%T4(I,J,K,L)
                          SN=0.001D0
                          GO TO 12
                       ELSE
                          str%T6(I,J,K,L,N,M)=str%T6(I,J,K,L,N,M).AND.str%T4(I,J,K,L)
                       ENDIF
                    ENDIF
11                  SN=SIN(str%R4(I,J,K,L))
12                  CS=1.0D0-SN
                    IF(SN.GT.CS) THEN
                       str%T6(I,J,K,L,N,M)=.NOT.str%T6(I,J,K,L,N,M)
                    ELSE
                       str%T6(I,J,K,L,N,M)=.NOT.str%T4(I,J,K,L)
                    ENDIF
10                  CONTINUE
20                  CONTINUE
30                  CONTINUE
40                  CONTINUE
50                  CONTINUE
60                  CONTINUE
                 enddo
              enddo
           enddo
        enddo
     enddo
  enddo
  write(6,*) str%T2
  write(6,*)
  write(6,*) str%T4
  write(6,*)
  write(6,*) str%T6
  write(6,*)
  write(6,*) str%R2
  write(6,*)
END program
