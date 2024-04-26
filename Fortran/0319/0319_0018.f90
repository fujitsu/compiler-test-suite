      MODULE HN_COM_2
      TYPE OUTLINETP
         INTEGER                      :: POINT
         INTEGER,DIMENSION(500)       :: NDNO
      END TYPE OUTLINETP
      TYPE(OUTLINETP),DIMENSION(30)   :: OUTLINE
      END MODULE HN_COM_2

      PROGRAM MAIN
      USE HN_COM_2

      call dummy(NZ)
      DO I = 2, NZ
         OUTLINE(I)%POINT = 20
      END DO
      call pri

      STOP
      END PROGRAM MAIN
      subroutine dummy(NZ)
      use hn_com_2
         OUTLINE(1)%POINT = 0
        NZ=30
      end
      subroutine pri
      use hn_com_2
      if (      OUTLINE(1) %POINT == 0           &
          .and. OUTLINE(2) %POINT == 20          &
          .and. OUTLINE(30)%POINT == 20 ) then
        print *,"OK"
      else
        print *,"*** NG ***"
      endif
      end
