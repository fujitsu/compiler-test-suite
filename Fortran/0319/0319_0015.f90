      MODULE HN_COM_2
      TYPE OUTLINETP
         INTEGER                      :: POINT
         INTEGER,DIMENSION(500)       :: NDNO
      END TYPE OUTLINETP
      TYPE(OUTLINETP),DIMENSION(:),ALLOCATABLE :: OUTLINE
      END MODULE HN_COM_2

      PROGRAM MAIN
      USE HN_COM_2
      call dummy(NZ)

      ALLOCATE ( OUTLINE(NZ) )

      DO I = 2, NZ
         OUTLINE(I)%POINT = 20
      END DO

      CALL pri

      STOP
      END PROGRAM MAIN
      subroutine dummy(NZ)
        NZ=30
      end
      subroutine pri
      use hn_com_2
        if ( OUTLINE(30)%POINT == 20 ) then
	  print *,"OK"
	else
	  print *,"*** NG ***"
	endif
      end
