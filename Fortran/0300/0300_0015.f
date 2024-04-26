      program main
      IMPLICIT REAL*8  ( A-H , O-Z )
      COMMON/GRID1/  IGRID,JGRID,KGRID
      integer a(1000) 
      IGRID = 8
      JGRID = 2
      KGRID = 24
      call sub(a)   
      print *,"ok"
      end

      subroutine sub(a)
      IMPLICIT REAL*8  ( A-H , O-Z )
      integer a(1000) 
      COMMON/GRID1/  IGRID,JGRID,KGRID
      DO 210 K = 1 , KGRID
      DO 210 L = 1 , (IGRID+JGRID)
      DO 210 J = MIN0(L-1,JGRID),MAX0(1,L-IGRID),-1
         A(J) = J
210   continue
      end
 
