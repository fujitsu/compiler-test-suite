      ITEST = ITEOP (1, 2)
      if (ITEST/=4)print *,'error-2'
      print *,'pass'
      END
      RECURSIVE FUNCTION ITEOP (J1, IOP) RESULT (IRES)
      NVER = 4
      IF (NVER > 3) CALL RESIZE
      IRES = NVER
      CONTAINS
         SUBROUTINE RESIZE
         INTEGER, DIMENSION(:), ALLOCATABLE :: MAP
         data initvalue/1000/
         item=1
         if (initvalue/=1000)print *,'error-1'
         ALLOCATE (MAP(2))
         DEALLOCATE (MAP)
         END SUBROUTINE RESIZE
      END
