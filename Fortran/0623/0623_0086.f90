program test
!$omp parallel 
!$omp do private(j,k) collapse(2) lastprivate(jlast, klast) 
do k = 1,2 
  do j = 1,3 
    jlast=j 
    klast=k 
  enddo 
enddo 
!$omp end do 
!$omp single 
if (1.eq.2)print *, klast, jlast 
!$omp end single 
!$omp end parallel

print *,"pass"
end program test
