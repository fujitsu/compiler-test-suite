      MODULE mgrid
      TYPE layout
        INTEGER x
      END TYPE
      TYPE grid_3d
        TYPE(layout)    :: RC
      END TYPE
      END MODULE

      MODULE WAVE
      CONTAINS
      SUBROUTINE SETWGRID(GRID)
      USE mgrid
      TYPE (grid_3d):: GRID
      END SUBROUTINE
      END MODULE

      MODULE nonl
      CONTAINS
      SUBROUTINE SPHER(GRID)
      USE wave
      USE mgrid
      TYPE (grid_3d)  ::   GRID
      END SUBROUTINE
      END MODULE

      USE nonl
      print *,'pass'
      end

