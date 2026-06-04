    call sub()
    print *,'pass'
    contains

      subroutine sub()
      common /aa/ ib
      ib=-11
!$omp parallel private(/aa/)
      ib=-1
 !$omp parallel
   !$omp single
      ib=ib-1
   !$omp end single
  !$omp parallel private(/aa/)
      ib = 1000
  !$omp end parallel

  !$   if (.true.) then 
  !$     if (ib/=-2) print *,"fail"
  !$   else
         if (ib/=1000) print *,"fail"
  !$   endif

 !$omp endparallel

 !$   if (.true.) then 
 !$     if (ib/=-2) print *,"fail"
 !$   else
        if (ib/=1000) print *,"fail"
 !$   endif

!$omp endparallel

!$   if (.true.) then 
!$     if (ib/=-11) print *,"fail"
!$   else
       if (ib/=1000) print *,"fail"
!$   endif
      end subroutine
    end
