      program main
      integer*4 ia1, ia2,ia3, ib1(30), ib2(30), ib3(30)
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
      ib1 = 0
      ia2 = 0
      ib2 = 0
      ia3 = 0
      ib3 = 0
!$    call OMP_SET_DYNAMIC(.true.)
!$    ld=OMP_GET_DYNAMIC()
!$    call OMP_SET_DYNAMIC(.false.)
!$    if(ld) call OMP_SET_NUM_THREADS(ist)
!$    ith=OMP_GET_MAX_THREADS()
!$    call OMP_SET_MAX_ACTIVE_LEVELS(1)
!$    ln=OMP_GET_MAX_ACTIVE_LEVELS()
!$omp parallel
      call sub(ia1, ia2, ia3, ib1, ib2, ib3, ln)
!$omp end parallel
      write(*,*) "----- test --",
     +                " parallel + paralell + parallel ----"
      if(ia1.eq.ist .and. (ia2.le.ist**2 .and. ia2.ge.ith) .and.
     +                    (ia3.le.ist**3 .and. ia3.ge.ith) ) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  PARALLEL*3 Directive is not active!"
         write(*,*) "      OMP_GET_MAX_THREADS()=",ith
         write(*,*) "      OMP_GET_DYNAMIC=",ld,
     +                  "  OMP_GET_MAX_ACTIVE_LEVELS=",ln
         write(*,*) "      ia1=",ia1,"  ia2=",ia2,"  ia3=",ia3
         write(*,*) "      ib1=",ib1
         write(*,*) "      ib2=",ib2
         write(*,*) "      ib3=",ib3
      endif
      stop
      end

      subroutine sub(ia1, ia2, ia3, ib1, ib2, ib3, ln)
      integer*4 ia1, ia2, ia3, ib1(30), ib2(30), ib3(30)
      logical*4 ln
      integer*4 itn1, itn2, itn3, int1, int2, int3
!$    integer*4 OMP_GET_NUM_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
!$    itn1 = OMP_GET_THREAD_NUM()+1
!$    int1 = OMP_GET_NUM_THREADS()
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
!$omp parallel if(ln) private(itn3,int3)
!$    itn3 = OMP_GET_THREAD_NUM()+1
!$    int3 = OMP_GET_NUM_THREADS()
!$omp atomic
      ib3(itn3) = ib3(itn3) + int3
!$omp atomic
      ia3 = ia3 + 1
!$omp end parallel
!$omp end parallel
      return
      end
