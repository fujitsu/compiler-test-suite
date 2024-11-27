
  integer error_cnt1
  integer error_cnt2
  integer error_cnt3
  error_cnt1 = 0
  error_cnt2 = 0
  error_cnt3 = 0

!$omp parallel
!$omp sections
!$omp section
  error_cnt1 =error_cnt1+1
!$omp section
  error_cnt2 =error_cnt2+1
!$omp section
  error_cnt3 =error_cnt3+1
!$omp section
!$omp end sections
!$omp end parallel
 if ( error_cnt1 .ne. 1 ) print *,"ng1"
 if ( error_cnt2 .ne. 1 ) print *,"ng1"
 if ( error_cnt3 .ne. 1 ) print *,"ng1"
 print *,'pass'
end
