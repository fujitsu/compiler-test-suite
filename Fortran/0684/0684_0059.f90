 call s2
 print *,'pass'
 end
 subroutine s2
   integer,dimension(5)::aa
!$omp parallel default(shared)
   do i=1,5
!$omp parallel shared(aa,i)
       aa(i)=-1
!$omp end parallel
   end do
!$omp end parallel
      END
