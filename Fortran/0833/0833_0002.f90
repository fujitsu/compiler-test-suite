  integer error_cnt1
  integer error_cnt2
  integer error_cnt3
  integer error_cnt0
  error_cnt0 = 0
  error_cnt1 = 0
  error_cnt2 = 0
  error_cnt3 = 0

!$omp parallel
!$omp sections
!$omp section
!$omp parallel
  error_cnt1 =error_cnt1+1
!$omp endparallel
!$omp section
!$omp task
  error_cnt0 =error_cnt0+1
!$omp end task
!$omp section
!$omp atomic
  error_cnt2 =error_cnt2+1
!$omp end atomic
!$omp section
!$omp simd
 do ii=1,1
  error_cnt3 =error_cnt3+1
end do
!$omp end simd
!$omp section
!$omp end sections
!$omp end parallel
!$omp parallel
!$omp simd
 do ii=1,1
  error_cnt3 =error_cnt3+1
end do
!$omp end simd
!$omp end parallel
 if ( error_cnt0 .ne. 1) print *,error_cnt0,'ng'
 if ( error_cnt1 .ne. 1) print *,error_cnt1,'ng1'
 if ( error_cnt2 .ne. 1) print *,error_cnt2,'ng2'
 if ( error_cnt3 .ne. 3) print *,error_cnt3,'ng3'
 print *,'pass'
end
