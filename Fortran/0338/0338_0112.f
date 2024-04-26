      PROGRAM MAIN
      LOGICAL FLAG
      WRITE(6,*)'#### START ####'
      FLAG=.TRUE.
      DO 10 I=1,2
   10   PAUSE '--- PLEASE HIT ANY KEY!! ---'
      IF(FLAG) PAUSE '--- PLEASE HIT ANY KEY!! ---'
      CALL SUB
      WRITE(6,*)'####  END  ####'
      END

      SUBROUTINE SUB
      PAUSE '--- PLEASE HIT ANY KEY!! ---'
      END
