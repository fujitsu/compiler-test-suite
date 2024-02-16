      call ITEOP (2)
      print *,'pass'
      END

      RECURSIVE SUBROUTINE ITEOP (IOP)
      CALL RESIZE()
      if (IOP<20) then 
          print *,"call ITEOP"
          call ITEOP (100)
      end if
      CONTAINS
         SUBROUTINE RESIZE()
         INTEGER, DIMENSION(:), ALLOCATABLE :: MAP
         ALLOCATE (MAP(2))
         END SUBROUTINE RESIZE
      END
