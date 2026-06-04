       SUBROUTINE SU(XS4,XP4,XA4,YS,YA)
       INTEGER      IS,IA(3),IP
       REAL         RS,RA(3),RP
       COMPLEX      CS,CA(3),CP
       LOGICAL      LS,LA(3),LP
       CHARACTER*2  HS,HA(3),HP,HS4*4,HP4*4,HA4(3)*4
       CHARACTER*(*)XS4,XP4,XA4(3),YS,YA(4)
       PARAMETER (IP=10,RP=10.,CP=(10,10),LP=.TRUE.,HP='AB',HP4='ABAB')
       IS=IP
       IA=IS
       RS=RP
       RA=RS
       CS=CP
       CA=CS
       LS=LP
       LA=LS
       HS=HP
       HA=HS
       HS4=HP//HP
       HA4=HS4
       CALL SI( (/IS,IP,IA(1),IA,IS+    IS,IA(1)+    IA(1),IA+    IA/))
       CALL SR( (/RS,RP,RA(1),RA,RS+    RS,RA(1)+    RA(1),RA+    RA/))
       CALL SC( (/CS,CP,CA(1),CA,CS+    CS,CA(1)+    CA(1),CA+    CA/))
       CALL SL( (/LS,LP,LA(1),LA,LS.AND.LS,LA(1).AND.LA(1),LA.AND.LA/))
       CALL SH( (/HS4,HP4,HA4(1),HA4,HS//HS,HA(1)//  HA(1),HA//   HA/))
       CALL SH( (/XS4,XP4,XA4(1),XA4,YS//YS,YA(1)//  YA(1),YA//   YA/))
       PRINT *,'PASS'
       END
       SUBROUTINE SI(I)
       INTEGER I(11)
       REAL    R(11)
       COMPLEX C(11)
       LOGICAL L(11)
       CHARACTER*(*) H(11)
       DO 1 J=1,6
          IF(I(J).NE.10)PRINT *,'FAIL'
   1   CONTINUE
       DO 2 J=7,11
          IF(I(J).NE.10+10)PRINT *,'FAIL'
   2   CONTINUE
       RETURN
       ENTRY      SR(R)
       DO 11 J=1,6
          IF(R(J).NE.10)PRINT *,'FAIL'
  11   CONTINUE
       DO 12 J=7,11
          IF(R(J).NE.10+10)PRINT *,'FAIL'
  12   CONTINUE
       RETURN
       ENTRY      SC(C)
       DO 21 J=1,6
          IF(C(J).NE.(10,10))PRINT *,'FAIL'
  21   CONTINUE
       DO 22 J=7,11
          IF(C(J).NE.(20,20))PRINT *,'FAIL'
  22   CONTINUE
       RETURN
       ENTRY      SL(L)
       DO 31 J=1,11
          IF(.NOT.L(J))PRINT *,'FAIL'
  31   CONTINUE
       RETURN
       ENTRY      SH(H)
       IF (LEN(H).NE.4)PRINT *,'FAIL'
       DO 41 J=1,11
          IF(H(J).NE.'ABAB')PRINT *,'FAIL'
  41   CONTINUE
       RETURN
       END
       CHARACTER*(2) P,PA(4)
       PARAMETER (P='AB')
       PA=P
       CALL SU (P//P,P//P,PA//PA,P,PA)
       END
