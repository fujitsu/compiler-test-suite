      ITEST = ITEOP (1, 2)
      write(1,*) ITEST
      print *,'pass'
      END
      RECURSIVE FUNCTION ITEOP (J1, IOP) RESULT (IRES)
      NVER = 4
      IF (NVER > 3) CALL RESIZE
      IRES = NVER
      CONTAINS
         SUBROUTINE RESIZE
         INTEGER, DIMENSION(:), ALLOCATABLE :: MAP
         ALLOCATE (MAP(2))
         DEALLOCATE (MAP)
         END SUBROUTINE RESIZE
      END
