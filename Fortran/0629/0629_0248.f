      IMPLICIT DOUBLE PRECISION (A-H,O-Z), INTEGER (I-N)
      DOUBLE PRECISION,ALLOCATABLE,DIMENSION(:,:) :: ub
      DOUBLE PRECISION,DIMENSION(10,10) :: dswall

      ucomp=0
      umaxb=0

      allocate(ub(10,10))
      do ir=1,10
        do ib=1,10
          ub(ir,ib) = ir + ib
        enddo
      enddo

      do ir=1,10
        do ib=1,10
          if (ib.ne.0) then
            ucomp=sqrt(ub(1,ib))
            if (ucomp.gt.umaxb) umaxb=ucomp
            dswall(1,ib)=ub(1,ib)
          endif
        enddo
      enddo

      deallocate(ub)
      print*, umaxb
      end
