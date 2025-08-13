      program main
      integer*4 ia1, ia2, ib1(30),ib2(30)
      integer*4 ith, ist
      logical*4 ld, ln
!$    integer*4 OMP_GET_MAX_THREADS, OMP_GET_NUM_THREADS
!$    logical*4 OMP_GET_DYNAMIC
!$    logical*4 OMP_GET_MAX_ACTIVE_LEVELS
!$    if ( OMP_GET_NUM_THREADS().eq.1 ) then
!$     ist = 1
!$    else
       ist = 2
!$    end if
      ia1 = 0
      ia2 = 0
      ib1 = 0
      ib2 = 0
!$    call OMP_SET_DYNAMIC(.true.)
!$    ld=OMP_GET_DYNAMIC()
      write(*,*) "OMP_GET_DYNAMIC=",ld
!$    call OMP_SET_DYNAMIC(.false.)
!$    if(ld) call OMP_SET_NUM_THREADS(ist)
!$    ith=OMP_GET_MAX_THREADS()
!$    call OMP_SET_MAX_ACTIVE_LEVELS(1)
!$    ln=OMP_GET_MAX_ACTIVE_LEVELS()
      call sub(ia1, ib1, ia2, ib2, ln)
      write(*,*) "----- test --",
     +                " parallel + paralell ----"
      if(ia1.eq.ist .and. (ia2.le.ist**2 .and. ia2.ge.ith)) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  PARALLEL*2 Directive is not active!"
         write(*,*) "      OMP_GET_MAX_THREADS=",ith
         write(*,*) "      OMP_GET_DYNAMIC=",ld,
     +                  "  OMP_GET_MAX_ACTIVE_LEVELS=",ln
         write(*,*) "      ia1=",ia1,"  ia2=",ia2
         write(*,*) "      ib1=",ib1
         write(*,*) "      ib2=",ib2
      endif
      stop
      end

      subroutine sub(ia1, ib1, ia2, ib2, ln)
      integer*4 ia1, ia2, ib1(30),ib2(30)
      logical*4 ln
      integer*4 itn1, itn2, int1,int2
!$    integer*4 OMP_GET_NUM_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
!$omp parallel private(itn1,int1)
!$    itn1 = OMP_GET_THREAD_NUM()+1
!$    int1 = OMP_GET_NUM_THREADS()
!$omp atomic
      ib1(itn1) = ib1(itn1) + int1
!$omp atomic
      ia1 = ia1 + 1
!$omp parallel if(ln) private(itn2,int2)
!$    itn2 = OMP_GET_THREAD_NUM()+1
!$    int2 = OMP_GET_NUM_THREADS()
!$omp atomic
      ib2(itn2) = ib2(itn2) + int2
!$omp atomic
      ia2 = ia2 + 1
!$omp end parallel
!$omp end parallel
      return
      end
