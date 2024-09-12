program test
!$omp parallel num_threads(2) 
!$omp do collapse(2) ordered private(j,k) schedule(static,3) 
do k = 1,3
  do j = 1,2 
!$omp ordered
if (1.eq.2)     print *, omp_get_thread_num(), k, j 
!$omp end ordered 
  enddo 
enddo 
!$omp end do 
!$omp end parallel

if (1.eq.2)print *,"ANS"
if (1.eq.2)print *,0,1,1
if (1.eq.2)print *,0,1,2
if (1.eq.2)print *,0,2,1 
if (1.eq.2)print *,1,2,2 
if (1.eq.2)print *,1,3,1 
if (1.eq.2)print *,1,3,2
print *,"pass"

end program test

