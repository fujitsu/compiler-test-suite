!             CVCT6300            LEVEL=3        DATE=83.08.27
!*************************************************
!*  1. PROGRAM NAME   :  CVCT6300
!*  2. PURPOSE        :  RC-SUM FUNCTION TEST
!*  3. RESULTS        :
!*  4. ENVIRONMENT    :
!*  5. HISTORY        :  1983-08-27
!*************************************************
PROGRAM CV6300
  !
  IMPLICIT REAL*8(D),REAL*8(Q),COMPLEX(C),LOGICAL(L)
  !
  type st1
     real*8    DS01,DS02,DS03,DS04,DS05
     integer   IS01,IS02,IS03
  end type st1
  type(st1) :: str
  data str%DS01,str%DS02,str%DS03,str%DS04,str%DS05/1,2,3,4,5/
  data str%IS01,str%IS02,str%IS03          /1,2,3/
  !
  !      TEST FOR THE SIDE-EFFECT OF MINIMIZE
  !
  DO  J=1,10
      str%DS01= str%DS01+ str%DS03+ str%DS04
     DO  I=1,10
        IF(J.GT.5) THEN
            str%DS02= str%DS02+ str%DS03+ str%DS05
        END IF
     enddo
  enddo
  !
  WRITE(6,*) ' **** CVCT6300 (1) **** '
  WRITE(6,*) '    TEST FOR THE SIDE-EFFECT OF MINIMIZE '
  WRITE(6,*)  str%DS01, str%DS02,I,J
  !
  !
  !
  DO  J=1,10
     DO  I=1,10
        IF (J.LE.2)  GOTO 21
        IF (J.GE.9)  GOTO 22
        IF (J.EQ.5)  GOTO 21
        IF (I.LE.5)  GOTO 23
        GOTO 20
        !
21      CONTINUE
        !       RC OR RC
        str%IS01 = str%IS01 + 1
        GOTO 20
        !
22      CONTINUE
        !       RC
        IF(J.EQ.10) GOTO 23
        !       RC & RC
        str%IS02 = str%IS02 + 1
        GOTO 20
        !
23      CONTINUE
        !       RC & EX
        str%IS03 = str%IS03 + 1
        !
20      CONTINUE
     enddo
  enddo
  WRITE(6,*) ' *** CVCT6300 (2) ***'
  WRITE(6,*) ' RC  OR  RC  ',str%IS01
  WRITE(6,*) ' RC AND  RC  ',str%IS02
  WRITE(6,*) ' RC AND  EX  ',str%IS03
  STOP
END PROGRAM CV6300
