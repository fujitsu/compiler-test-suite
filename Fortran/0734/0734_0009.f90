      J1=1
      IOP=2
      ITEST = ITEOP (J1, IOP)
      if (ITEST/=4)print *,'error-2'
      J1=1
      IOP=2
      ITEST = ITEOP (J1, IOP)
      if (ITEST/=4)print *,'error-6'
      print *,'pass'
      END
      RECURSIVE FUNCTION ITEOP (J1, IOP) RESULT (IRES)
      INTEGER, DIMENSION(:), ALLOCATABLE :: XMAP
       ALLOCATE (XMAP(2))
      NVER = 4
      IOP=IOP+1
      IIOP=IOP
       XMAP(2)=IOP
      NN=IOP
       IF (IOP/=XMAP(2))print *,'error-5'
      call xxx
      IF (NVER > 3) CALL RESIZE(NN)
      if (IOP<20) K=ITEOP (J1, IOP)
      IRES = NVER
       IF (IIOP/=XMAP(2))print *,'error-4'
      CONTAINS
         SUBROUTINE RESIZE(NNX)
         INTEGER, DIMENSION(:), ALLOCATABLE :: MAP
         data initvalue/1000/
         if (NNX/=NN)print *,'error-3'
         item=1
         if (initvalue/=1000)print *,'error-1'
         ALLOCATE (MAP(2))
         END SUBROUTINE RESIZE
      END
      recursive subroutine xxx
      integer x(1000)
      x=(/(i,i=1,1000)/)
      end
