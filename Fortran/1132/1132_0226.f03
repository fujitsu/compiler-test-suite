!             CVCT5811            LEVEL=2        DATE=89.10.16
!  CVCT5811
!    CHANGE OF DO INDEX
!
!
module mm
  type st1
     integer IEOSLE(100,10),NCLEM2,IJ
     real*8 ROLTN(100,10),RROCSQ(100,10), &
          ACOMP,PARPL(100,10), &
          ROGTN(100,10),GAMCE(100,10),TSUP(100,10), &
          TSTAR(100,10),RPSTAR(100,10),PVL, &
          CVG(100,10),RMAT(100,10),TL(100,10), &
          TSAT(100,10),SENT(100,10),TCRIT(100,10), &
          HSTAR(100,10),ZETA(100,10),SIELS(100,10), &
          TMLT(100,10),CVL(100,10),SIELIQ(100,10), &
          ZERO,ONE,TWO3RD,CVLP(100,10),AEOSLM(100,10),RTCRIT(100,10), &
          HALF,SIEGTE,ROGTEM
  end type st1
  type(st1) :: str
end module mm

program cv5811
  use mm
  IMPLICIT  REAL*8 (A-H,O-Z)
  DATA UNNORM/1.0/
  str%NCLEM2 = 10
  str%ZERO   = 0.
  str%ACOMP  = 100.
  str%PVL    = 0.
  str%IJ     = 1
  str%ONE    = 1.
  str%TWO3RD = 1.
  str%HALF   = 0.5
  str%SIEGTE = 0.
  str%ROGTEM = 0.
  DO  J=1,100
     DO  I=1,10
        str%IEOSLE(J,I) = I
        IF(MOD(I,2).EQ.0) THEN
           str%PARPL(J,I)    = 0.
           str%ROLTN(J,I)    = UNNORM
           str%RROCSQ(J,I)   = UNNORM
           str%TSUP(J,I)     = UNNORM
           str%TSTAR(J,I)    = UNNORM
           str%RPSTAR(J,I)   = UNNORM
           str%TL(J,I)       = UNNORM
           str%CVG(J,I)      = UNNORM
           str%RMAT(J,I)     = UNNORM
           str%TSAT(J,I)     = UNNORM
           str%TCRIT(J,I)    = UNNORM
           str%RTCRIT(J,I)   = UNNORM
           str%SENT(J,I)     = UNNORM
           str%HSTAR(J,I)    = UNNORM
           str%ZETA(J,I)     = UNNORM
           str%SIELS(J,I)    = UNNORM
           str%SIELIQ(J,I)   = UNNORM
           str%TMLT(J,I)     = UNNORM
           str%CVL(J,I)      = UNNORM
           str%CVLP(J,I)     = UNNORM
           str%AEOSLM(J,I)   = UNNORM
        ELSE
           str%PARPL(J,I)    = I
           str%ROLTN(J,I)    = I
           str%RROCSQ(J,I)   = I
           str%TSUP(J,I)     = I
           str%TSTAR(J,I)    = I
           str%RPSTAR(J,I)   = I
           str%TL(J,I)       = I
           str%CVG(J,I)      = I
           str%RMAT(J,I)     = I
           str%TSAT(J,I)     = I
           str%TCRIT(J,I)    = I
           str%RTCRIT(J,I)   = I
           str%SENT(J,I)     = I
           str%HSTAR(J,I)    = I
           str%ZETA(J,I)     = I
           str%SIELS(J,I)    = I
           str%SIELIQ(J,I)   = I
           str%TMLT(J,I)     = I
           str%CVL(J,I)      = I
           str%CVLP(J,I)     = I
           str%AEOSLM(J,I)   = I
        ENDIF
10      CONTINUE
     enddo
  enddo
  CALL  SUB
  write(6,1) str%SIEGTE
  write(6,1) str%ROGTEM
  write(6,2) str%SIELS
  1 format(f12.5)
  2 format(8f12.5)
END program cv5811
SUBROUTINE SUB
  use mm
  IMPLICIT  REAL*8 (A-H,O-Z)
  !
  !
  DO  N=1,100
     DO  J=1,10
        str%ROGTN(N,J) = str%ZERO
        str%GAMCE(N,J) = str%ZERO
        IF(str%PARPL(N,J) .EQ. str%ZERO) GO TO 2330
        ROLP = str%ROLTN(N,J)
        RLCMP = ROLP * str%RROCSQ(N,J)
        ATEMP = str%ACOMP - RLCMP
        IF(ROLP .GE. ATEMP*str%PARPL(N,J)) GO TO 2320
        str%PARPL(N,J) = ROLP / ATEMP
        IF(str%PARPL(N,J) .EQ. str%ZERO) GO TO 2330
        str%TL(N,J) = str%TSUP(N,J) - str%TSTAR(N,J) &
             / (DLOG(str%PARPL(N,J)*str%RPSTAR(N,J)))
2320    CONTINUE
        str%PVL = str%PVL + str%PARPL(N,J)
        ZIP = (str%PARPL(N,J)*str%CVG(N,J)) / str%RMAT(N,J)
        str%TSAT(N,J) = str%TL(N,J) - str%TSUP(N,J)
        str%SENT(N,J) = str%ZERO
        IF(str%TSAT(N,J) .LT. str%TCRIT(N,J)) &
             str%SENT(N,J) = str%HSTAR(N,J) &
             * (str%ONE - str%TSAT(N,J) * str%RTCRIT(N,J)) * str%ZETA(N,J)
        IF(str%TSAT(N,J) .GT. str%TWO3RD * str%TCRIT(N,J)) GO TO 2322
        str%SIELS(N,J) = str%SIELIQ(N,J) &
             + DMAX1(str%TSAT(N,J) - str%TMLT(N,J),str%ZERO) * str%CVL(N,J)
        GO TO 2324
2322    str%SIELS(N,J) = str%SIELIQ(N,J) + str%CVLP(N,J) &
             * (str%TSAT(N,J) - str%TWO3RD * str%TCRIT(N,J)) &
             + str%AEOSLM(N,J) - str%HALF * str%SENT(N,J)
2324    CONTINUE
2330    CONTINUE
     enddo
  enddo
END SUBROUTINE SUB
