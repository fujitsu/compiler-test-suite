c
c
c
c
      program main
      logical OMP_IN_PARALLEL
      logical*2 xin1, xin2
      type z
        logical :: x1(2)=(/.false.,.true./)
        logical :: x2(2)=(/.false.,.false./)
      end type
      type (z) a
c
      i1=2
      i2=1
!$omp parallel if(a%x1(i1))
      xin1=OMP_IN_PARALLEL()
!$omp endparallel
!$omp parallel if(a%x2(i2))
      xin2=OMP_IN_PARALLEL()
!$omp endparallel
      write(*,*) "----- TEST --"
      write(*,*) "      parallel if(a%x1(i1))"
      write(*,*) "      parallel if(a%x2(i2)) -----"
      if((xin1.eqv..true.).and.(xin2.eqv..false.))then
         write(*,*) "OK!"
      else
         write(*,*) "NG!  IF Clause is incorrect!"
         write(*,*) "     xin1=",xin1,"  a%x1(i1)=",a%x1(i1)
         write(*,*) "     xin2=",xin2,"  a%x2(i2)=",a%x2(i2)
      endif
      stop
      end
