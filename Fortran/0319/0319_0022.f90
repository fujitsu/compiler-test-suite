      MODULE HN_COM_2
      TYPE OUTLINETP
         INTEGER                  :: POINT
         INTEGER,DIMENSION(500)   :: NDNO
      END TYPE OUTLINETP
      TYPE(OUTLINETP),DIMENSION(:),ALLOCATABLE :: OUTLINE
      TYPE(OUTLINETP),DIMENSION(:),pointer :: mpo
      END MODULE HN_COM_2

      PROGRAM MAIN
      USE HN_COM_2,rin=>OUTLINE,ptr=>mpo

      call dummy(NZ)
      ALLOCATE ( rin(NZ) )
      ALLOCATE ( ptr(NZ) )

      do i=2,NZ
        rin(i)%POINT   = 20
        ptr(i)%ndno(i) = i
        rin(i)%ndno(i) = i
        ptr(i)%point   = i
      enddo
      call pri

      END
      subroutine dummy(NZ)
      USE HN_COM_2
        NZ=30
      end
      subroutine pri
      use hn_com_2
      if (      OUTLINE(30)%POINT == 20     &
          .and. OUTLINE(30)%NDNO(30) == 30  &
          .and. OUTLINE(2)%NDNO(2) == 2     &
          .and. mpo(2)%NDNO(2) == 2         &
          .and. mpo(30)%NDNO(30) == 30      &
          .and. mpo(20)%point == 20         ) then
        print *,"OK"
      else
        print *,"*** NG ***"
      endif
      end
