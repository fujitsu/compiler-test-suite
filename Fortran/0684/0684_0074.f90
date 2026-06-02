CALL OMP_SET_NUM_THREADS(1)
 call s1
 print *,'pass'
 end
 subroutine s1
  integer,dimension(5)::j,jj=(/1,2,3,4,5/)
!$omp parallel default(private) shared(jj)
j=jj
  forall(k=1:5) j(k)=sum(j(1:k))
  if (any(j/=(/1,3,6,10,15/)))print *,"fail"
!$omp end parallel
      end
