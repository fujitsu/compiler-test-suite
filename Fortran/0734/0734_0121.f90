      REAL*8   TS, TE
      call AITMSE
      call AJTMSE( TS, TE )
      if (abs(TS-1)>0.00001)write(6,*) "NG"
      if (abs(TE-1)>9999.)write(6,*) "NG"
      print *,'pass'
      end
      SUBROUTINE AJTMSE( TS, TE )
      REAL*8   TS, TE
      REAL*8   TSTART, TEND
      REAL*8   RBUF(2)
      SAVE     RBUF
      EQUIVALENCE ( RBUF(1),TSTART ),( RBUF(2),TEND   )
      TS  = TSTART
      TE  = TEND
      RETURN
      ENTRY  AITMSE
      TEND   = 9999.0
      TSTART = 1.0
      RETURN
      END
