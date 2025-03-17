      program main
      logical OMP_IN_PARALLEL
      logical xin1, xin2
      logical,parameter::xy=.true., xn=.false.
!$omp parallel if(xy)
      xin1=OMP_IN_PARALLEL()
!$omp endparallel
!$omp parallel if(xn)
      xin2=OMP_IN_PARALLEL()
!$omp endparallel
      write(*,*) "----- test --"
      write(*,*) "      parallel if(xy)"
      write(*,*) "      parallel if(xn) -----"
      if((xin1.eqv..true.).and.(xin2.eqv..false.))then
         write(*,*) "OK!"
      else
         write(*,*) "NG  IF Clause is incorrect"
         write(*,*) "     xin1=",xin1,"  xy=",xy
         write(*,*) "     xin2=",xin2,"  xn=",xn
      endif
      stop
      end
