      MODULE HN_COM_2
      TYPE OUTLINETP
         INTEGER                  :: POINT
         INTEGER,DIMENSION(500)   :: NDNO
      END TYPE OUTLINETP
      TYPE(OUTLINETP),DIMENSION(:),ALLOCATABLE :: OUTLINE
      END MODULE HN_COM_2

      PROGRAM MAIN
      USE HN_COM_2

      ALLOCATE ( OUTLINE(1) )

      call dummy(NZ)
      DO I = 2, NZ
         OUTLINE%POINT = 20
      END DO
      call pri

      STOP
      END PROGRAM MAIN
      subroutine dummy(NZ)
      USE HN_COM_2
        NZ=30
        OUTLINE%POINT = 0
      end
      subroutine pri
      use hn_com_2
      if ( OUTLINE(1)%POINT == 20 ) then
        print *,"OK"
      else
        print *,"*** NG ***"
      endif
      end
