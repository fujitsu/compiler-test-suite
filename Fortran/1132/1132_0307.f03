!             CVCT6410            LEVEL=1        DATE=85.07.04
!
! 1. PROGRAM NAME : CVCT6410
! 2. PURPOSE      : BRANCH PATH FOR IF(0)
! 3. RESULT       : BRANCH PATH
! 4. ENVIRONMENT  :
! 5. HISTORY      : 1985-06-22
!
PROGRAM CV6410
  type st1
     REAL    EA(256),EB(256),EC(256),ED(256)
     REAL *8 DA(256),DB(256),DC(256),DD(256),DMX
     LOGICAL LA(256),LB(256),LC(256),LD(256)
  end type st1
  type(st1) :: str
  !
  DO  I=1,256
     str%EA(I)=I
     str%EB(I)=I
     str%LA(I)=MOD(I,3).EQ.0
     str%LD = .false.
     IF(I.GT.100.AND.I.LT.120) str%LA(I)=.TRUE.
     str%LB(I)=.TRUE..NEQV.str%LA(I)
     str%LC(I)=str%LB(I).AND.str%LD(I)
     str%LD(I)=str%LB(I).AND.I.GT.100.AND.I.LT.120
     str%DA(I)=((I-10)**2)*4.
10   str%DB(I)=((I-12)**2)*2.
  enddo
  !
  str%DMX=0.
  DO  I=1,256
     str%DD(I)=I
     str%EC(I)=-1.
     str%DC(I)=str%DA(I)*str%DB(I)/4.
     IF(str%DMX.LT.str%DA(I)) THEN
        str%DMX=str%DA(I)
     ENDIF
     IF(str%DB(I).LT.2) str%DB(I)=4.*str%DA(I)
     IF(str%LA(I)) GOTO 20
     str%DD(I)=str%DC(I)/(str%DA(I)+I)
     IF(str%DD(I).GT.0) THEN
        str%EC(I)=I
     ENDIF
20   CONTINUE
  enddo
  WRITE(6,9999) str%DC
  WRITE(6,9999) str%DD
  WRITE(6,9999) str%EC,str%DMX
  write(6,*)
  !
  ESM=2.
  DO  J=1,250
     IF(str%LA(J)) THEN
        DO  I=1,256
           IF(I.GT.300) ESM=ESM+str%EA(I)
30         str%ED(I)=str%EA(I)-4.
        enddo
     ENDIF
31   CONTINUE
  enddo
  !
  DO  I=1,256
     IF(I-3) 41,41,40
41   str%ED(I)=99999999.
     IF(str%LB(I)) GOTO 40
     str%ED(I)=str%ED(I)+1.
40   str%EA(I)=str%ED(I)+str%EA(I)
  enddo
  WRITE(6,9999) str%ED
  WRITE(6,9999) str%EA,ESM
  write(6,*)
  !
  EMIN=9999999.
  EMIX=0.
  DO  I=1,256
     IF(I.GT.200) THEN
        str%EB(I)=str%EB(I)+str%EA(I)
        IF(str%LA(I)) THEN
           str%EB(I)=str%EB(I)**4.
        ELSE
           str%EB(I)=str%EB(I)**2.
        ENDIF
     ELSE
        str%EB(I)=I
     ENDIF
     IF(EMIN.GT.str%EB(I)) THEN
        EMIN=str%EB(I)
        EMIX=I
     ENDIF
50   CONTINUE
  enddo
  WRITE(6,9999) str%EB
  WRITE(6,9999) EMIN,EMIX
9999 format(10f20.6)
END PROGRAM CV6410
