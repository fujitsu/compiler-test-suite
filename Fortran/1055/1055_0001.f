      program main
      integer*4 ia0, ib0(30), itn0, int0
      integer*4 ia1, ib1(30), itn1, int1
      integer*4 ia2, ib2(30), itn2, int2
      integer*4 ith, ist
      logical*4 ld, ln0,ln1
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_NUM_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
!$    logical*4 OMP_GET_DYNAMIC
!$    logical*4 OMP_GET_MAX_ACTIVE_LEVELS
!$    if ( OMP_GET_NUM_THREADS().eq.1 ) then
!$     ist = 1
!$    else
       ist = 2
!$    end if
      ia0 = 0
      ia1 = 0
      ia2 = 0
      ib0 = 0
      ib1 = 0
      ib2 = 0
!$    call OMP_SET_DYNAMIC(.true.)
!$    ld=OMP_GET_DYNAMIC()
      write(*,*) "OMP_GET_DYNAMIC=",ld
!$    if(ld) call OMP_SET_NUM_THREADS(ist)
!$    ith=OMP_GET_MAX_THREADS()
!$    call OMP_SET_MAX_ACTIVE_LEVELS(.true.)
!$    ln0=OMP_GET_MAX_ACTIVE_LEVELS()
!$omp parallel private(itn0,int0)
!$    itn0 = OMP_GET_THREAD_NUM()+1
!$    int0 = OMP_GET_NUM_THREADS()
!$omp atomic
      ib0(itn0) = ib0(itn0) + int0
!$omp atomic
      ia0 = ia0 + 1
!$omp end parallel
!$    if(ld) call OMP_SET_NUM_THREADS(ist)
!$    ln1=OMP_GET_MAX_ACTIVE_LEVELS()
!$omp parallel private(itn1,int1)
!$    itn1 = OMP_GET_THREAD_NUM()+1
!$    int1 = OMP_GET_NUM_THREADS()
!$omp atomic
      ib1(itn1) = ib1(itn1) + int1
!$omp atomic
      ia1 = ia1 + 1
!$omp parallel if(ln1) private(itn2,int2)
!$    itn2 = OMP_GET_THREAD_NUM()+1
!$    int2 = OMP_GET_NUM_THREADS()
!$omp atomic
      ib2(itn2) = ib2(itn2) +int2
!$omp atomic
      ia2 = ia2 + 1
!$omp end parallel
!$omp end parallel
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      parallel + paralell ----"
      if(ia0.eq.ist .and.
     +   ia1.eq.ist .and. (ia2.le.ist**2 .and. ia2.ge.ith)) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  PARALLEL, PARALLEL*2 ",
     +                              "Directive is not active!"
         write(*,*) "      OMP_GET_MAX_THREADS=",ith
         write(*,*) "      OMP_GET_DYNAMIC=",ld,
     +                  "  OMP_GET_MAX_ACTIVE_LEVELS=",ln0,ln1
         write(*,*) "      ia0=",ia0,"  ia1=",ia1,"  ia2=",ia2
         write(*,*) "      ib0=",ib0
         write(*,*) "      ib1=",ib1
         write(*,*) "      ib2=",ib2
      endif
      stop
      end

