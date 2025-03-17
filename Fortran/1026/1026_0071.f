      MODULE Vcoord
      INTEGER, PARAMETER :: IMAXP1 = 501
      END MODULE Vcoord
      SUBROUTINE KEEL(NODES,  RADIUS, NSNODE)
      USE VCOORD
      INTEGER, DIMENSION(IMAXP1) :: NSNODE
      REAL, DIMENSION(NODES+1) ::  RADIUS
      call sgeom(radius)
       CONTAINS
           SUBROUTINE SGEOM (RADIUS)
           REAL, DIMENSION(NODES) :: RADIUS
           radius = 1
           print *,radius
           END SUBROUTINE SGEOM
      END SUBROUTINE KEEL
      use Vcoord
      parameter (NODES=10)
      REAL, DIMENSION(NODES+1) ::  RADIUS
      INTEGER, DIMENSION(IMAXP1) :: NSNODE
      call KEEL(NODES,  RADIUS, NSNODE)
      end
