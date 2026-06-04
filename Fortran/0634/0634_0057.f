      WRITE(6,10)
   10 FORMAT('1','====== FORTRAN ====== ... I0000090'/)
      IP = 0
      CALL I09001(IP)
      CALL I09002(IP)
      IF(IP.NE.0) GO TO 20
      WRITE(6,30)
   30 FORMAT(21X,'I0000090',5X,'OK')
   20 WRITE(6,40)
   40 FORMAT(5X,'END RUNUNIT')
      STOP
      END
      SUBROUTINE I09001(IP)
      IMPLICIT LOGICAL*1(L) , LOGICAL*4(P)
      DIMENSION L1(1) , L2(2) , P1(1) , P2(2)
      DATA  L/1*.true./ , L1,L2/1*.FALSE.,.TRUE.,1*.false./  ,
     -      P,P1/2*.false./ , P2/1*.true.,.TRUE./
      LOGICAL*1 LK/1*.TRUE./ , LK1(1)/1*.false./ , LK2(2)
      DATA LK2/.true.,1*.false./
      LOGICAL*4 PK/.false./ , PK1(1) , PK2(2)/.TRUE.,1*.false./
      DATA PK1/.TRUE./
      K = 1
      IF(.NOT.L1(1).AND.PK2(1) .XOR. L2(1)
     -   .AND. .NOT..NOT.PK2(2)) GO TO 10
      IP = IP+1
      WRITE(6,200)K
  200 FORMAT(21X,'NO.1 ... I09001-',I1,' ===============================
     - (NG)')
   10 K = 2
      IF(P2(1).OR..NOT..NOT..NOT.LK1(1) .XOR.
     -  .FALSE.) GO TO 20
      IP = IP+1
      WRITE(6,200)K
   20 K = 3
      IF(LK.OR.P .XOR. PK1(1).EQV.LK2(2)
     -   .XOR. LK2(2)) GO TO 30
      IP = IP+1
      WRITE(6,200)K
   30 K = 4
      IF(.NOT.(P2(2).OR..NOT..NOT.LK1(1)) .XOR.
     -  .NOT..NOT.(L1(1).EQV.PK)) GO TO 40
      IP = IP+1
      WRITE(6,200)K
   40 K = 5
      IF(LK.EQV.LK2(1) .XOR. .NOT.(LK2(2).EQV.PK2(2))
     -  .XOR. L1(1) .XOR. .NOT.(PK1(1).EQV.L)) GO TO 50
      IP = IP+1
      WRITE(6,200)K
   50 K = 6
      IF(.NOT.((L2(2).OR..NOT..NOT.PK1(1)).XOR.((L.EQV.LK)))
     -  .XOR. .NOT..NOT..NOT.(((P.OR.LK)))) GO TO 60
      IP = IP+1
      WRITE(6,200)K
   60 IF(L.XOR.L1(1).XOR.L2(1).XOR.L2(2).XOR.P2(1).XOR.
     - P.XOR.P2(2).XOR.P1(1).XOR.LK.XOR.LK1(1).XOR.LK2(1)
     - .XOR.LK2(2).XOR.PK1(1).XOR.PK.XOR.PK2(1).XOR.PK2(2)
     - .XOR. .TRUE.) GO TO 100
      IP = IP+1
      WRITE(6,200)K
  100 RETURN
      END
      SUBROUTINE I09002(IP)
      LOGICAL*1 L1(1),L2(2) , L
      LOGICAL*4 P1(1)
      LOGICAL   P2(2) , P
      DATA  L/1*.true./ , L1,L2/1*.FALSE.,.TRUE.,1*.false./  ,
     -      P,P1/2*.false./ , P2/1*.true.,.TRUE./
      LOGICAL*1 LK/1*.TRUE./ , LK1(1)/1*.false./ , LK2(2)
      DATA LK2/.true.,1*.false./
      LOGICAL*4 PK/.false./ , PK1(1) , PK2(2)/.TRUE.,1*.false./
      DATA PK1/.TRUE./
      K = 1
      IF(.NOT.L1(1).AND.PK2(1) .XOR. L2(1)
     -   .AND. .NOT..NOT.PK2(2)) GO TO 10
      IP = IP+1
      WRITE(6,200)K
  200 FORMAT(21X,'NO.2 ... I09002-',I1,' ===============================
     - (NG)')
   10 K = 2
      IF(P2(1).OR..NOT..NOT..NOT.LK1(1) .XOR.
     -  .FALSE.) GO TO 20
      IP = IP+1
      WRITE(6,200)K
   20 K = 3
      IF(LK.OR.P .XOR. PK1(1).EQV.LK2(2)
     -   .XOR. LK2(2)) GO TO 30
      IP = IP+1
      WRITE(6,200)K
   30 K = 4
      IF(.NOT.(P2(2).OR..NOT..NOT.LK1(1)) .XOR.
     -  .NOT..NOT.(L1(1).EQV.PK)) GO TO 40
      IP = IP+1
      WRITE(6,200)K
   40 K = 5
      IF(LK.EQV.LK2(1) .XOR. .NOT.(LK2(2).EQV.PK2(2))
     -  .XOR. L1(1) .XOR. .NOT.(PK1(1).EQV.L)) GO TO 50
      IP = IP+1
      WRITE(6,200)K
   50 K = 6
      IF(.NOT.((L2(2).OR..NOT..NOT.PK1(1)).XOR.((L.EQV.LK)))
     -  .XOR. .NOT..NOT..NOT.(((P.OR.LK)))) GO TO 60
      IP = IP+1
      WRITE(6,200)K
   60 IF(L.XOR.L1(1).XOR.L2(1).XOR.L2(2).XOR.P2(1).XOR.
     - P.XOR.P2(2).XOR.P1(1).XOR.LK.XOR.LK1(1).XOR.LK2(1)
     - .XOR.LK2(2).XOR.PK1(1).XOR.PK.XOR.PK2(1).XOR.PK2(2)
     - .XOR. .TRUE.) GO TO 100
      IP = IP+1
      WRITE(6,200)K
  100 RETURN
      END
