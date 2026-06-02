!             CVCT2502            LEVEL=2        DATE=83.10.20
!  1. PROGRAM NAME  : CVCT2502
!  2. PURPOSE       : BLOCK STRUCTURE OF DO-BRANCH LOOP
!  3. RESULT        :
!  4. ENVIRONMENT   : LANGLVL(66),LANGLVL(77) SEE SYSDBG (INB'S ORDER)
!  5. HISTORY       : 1983-10-20
module mod
  IMPLICIT REAL*8(A-H,O-Z)
  type TAG1
     integer*8 NNODE(20),LNODE(20)
  end type TAG1
  type TAG2
     real*8    ZFA(20),QPOS(20),QPOS0(21),QD(20)
  end type TAG2
  type (TAG1) st1
  type (TAG2) st2
end module mod
      PROGRAM CV2502
      use mod
      IMPLICIT REAL*8(A-H,O-Z)
      st2%ZFA=0
      DO 10 I=1,20
        st1%NNODE(I) = I
        st1%LNODE(I) = 0
        st2%QPOS(I) = I
        st2%QPOS0(I) = 0.5
        st2%QD(I) = I
 10   CONTINUE
      st2%QPOS0(21)=0.5
      CALL REZONE
      WRITE(6,*) ' *** CVCT2502 ***'
      WRITE(6,*) ' QD = ',st2%QD
      STOP
      END
      SUBROUTINE REZONE
      use mod
      IMPLICIT REAL*8(A-H,O-Z)
!@
      MZ = 20
      LQ = 0
      LFIST = 2
      LT = 20
      FGASBP = 1.5
      QRAT = 0.5
!@
      DO 1200 J =1,MZ
        IF(st1%NNODE(J).EQ.1) st1%LNODE(J) =1
        IF(st1%LNODE(J).NE.0) GO TO 1300
1200  CONTINUE
      STOP
1300  CONTINUE
1400  DO 1700 L =J,MZ
        IF(st1%LNODE(L).NE.0) GO TO 1700
1500    IF(LQ.EQ.MZ) GO TO 1600
              LQ =LQ+1
        IF(st1%LNODE(LQ).EQ.0) GO TO 1500
        GO TO 1400
1600          QTO =st2%ZFA(L)+1.0D-10
              LZ =L-1
        GO TO 1800
1700  CONTINUE
1800  JZ =J
!C
      IF(LFIST.EQ.0) GO TO 4300
      DO 3100 M =1,LT
        IF(st2%QPOS(1).LT.st2%QPOS0(M+1)) GO TO 3200
              st2%QD(M) =FGASBP/QRAT
3100  CONTINUE
3200  CONTINUE
4300  CONTINUE
      RETURN
      END
