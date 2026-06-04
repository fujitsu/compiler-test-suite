module mm
  type st1
     integer IEOSLE(10,10)
     real*8 ROLTN(10,10),RROCSQ(10,10),    &
          ACOMP,PARPL(10,10),                &
          ROGTN(10,10),GAMCE(10,10),TSUP(10,10), &
          TSTAR(10,10),RPSTAR(10,10),PVL,         &
          CVG(10,10),RMAT(10,10),TL(10,10),      &
          TSAT(10,10),SENT(10,10),TCRIT(10,10),  &
          HSTAR(10,10),ZETA(10,10),SIELS(10,10), &
          TMLT(10,10),CVL(10,10),SIELIQ(10,10),  &
          ZERO,ONE,TWO3RD,CVLP(10,10),AEOSLM(10,10),RTCRIT(10,10),&
          HALF,SIEGTE,ROGTEM
  end type st1
  type(st1) :: str
end module mm
!             CVCT5810            LEVEL=8        DATE=84.10.31
!  CVCT5810
!    VOLUME VECTORIZE
!
!
program cv5810
  use mm
  IMPLICIT  REAL*8 (A-H,O-Z)
  DATA UNNORM/1.0/
  !                        MODIFIED BY N1127 ===> SEE  CERR0001
  str%ZERO   = 0.
  str%ACOMP  = 100.
  str%PVL    = 0.
  str%ONE    = 1.
  str%TWO3RD = 1.
  str%HALF   = 0.5
  str%SIEGTE = 0.
  str%ROGTEM = 0.
  DO  I=1,10
     DO  J=1,10
        str%IEOSLE(I,J) = I
        IF(MOD(I,2).EQ.0) THEN
           str%PARPL(I,J)    = 0.
           str%ROLTN(I,J)    = UNNORM
           str%RROCSQ(I,J)   = UNNORM
           str%TSUP(I,J)     = UNNORM
           str%TSTAR(I,J)    = UNNORM
           str%RPSTAR(I,J)   = UNNORM
           str%TL(I,J)       = UNNORM
           str%CVG(I,J)      = UNNORM
           str%RMAT(I,J)     = UNNORM
           str%TSAT(I,J)     = UNNORM
           str%TCRIT(I,J)    = UNNORM
           str%RTCRIT(I,J)   = UNNORM
           str%SENT(I,J)     = UNNORM
           str%HSTAR(I,J)    = UNNORM
           str%ZETA(I,J)     = UNNORM
           str%SIELS(I,J)    = UNNORM
           str%SIELIQ(I,J)   = UNNORM
           str%TMLT(I,J)     = UNNORM
           str%CVL(I,J)      = UNNORM
           str%CVLP(I,J)     = UNNORM
           str%AEOSLM(I,J)   = UNNORM
        ELSE
           str%PARPL(I,J)    =1.0D0
           str%ROLTN(I,J)    =1.0D0
           str%RROCSQ(I,J)   =1.0D0
           str%TSUP(I,J)     =1.0D0
           str%TSTAR(I,J)    =1.0D0
           str%RPSTAR(I,J)   =1.0D0
           str%TL(I,J)       =1.0D0
           str%CVG(I,J)      =1.0D0
           str%RMAT(I,J)     =1.0D0
           str%TSAT(I,J)     =1.0D0
           str%TCRIT(I,J)    =1.0D0
           str%RTCRIT(I,J)   = 2.0D0
           str%SENT(I,J)     =1.0D0
           str%HSTAR(I,J)    =1.0D0
           str%ZETA(I,J)     = 2.0D0
           str%SIELS(I,J)    =1.0D0
           str%SIELIQ(I,J)   =1.0D0
           str%TMLT(I,J)     =1.0D0
           str%CVL(I,J)      =1.0D0
           str%CVLP(I,J)     =1.0D0
           str%AEOSLM(I,J)   =1.0D0
        ENDIF
10      CONTINUE
     enddo
  enddo
  CALL  SUB
  write(6,1) str%SIEGTE
  write(6,1) str%ROGTEM
  write(6,1) str%SIELS
  1 format(10f8.3)
END program cv5810

SUBROUTINE SUB
  use mm
  IMPLICIT  REAL*8 (A-H,O-Z)
  !
  !
  DO  J=1,10
     DO  N=1,10
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
             * (str%ONE - str%TSAT(N,J) * str%RTCRIT(N,J)) ** str%ZETA(N,J)
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
