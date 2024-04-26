      PROGRAM MAIN

      INTEGER rank, size, root, ierror
      INTEGER data, result

      result = -100

      IF ( rank .EQ. 0 ) THEN
         WRITE(*,*) 'start. size=',size
      ENDIF

      data = rank

      root = 0

      IF (rank .EQ. 0) THEN
         WRITE(*,*) 'end'
         WRITE(*,*) 'result(',result,')'
      ENDIF

      STOP
      END
