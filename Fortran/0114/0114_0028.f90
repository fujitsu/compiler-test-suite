program main
common/com/j
j = 0
!$omp parallel do private(j)
do i=1,1
  j=i
  call sub(i)
enddo
!$omp end parallel do
!$omp parallel do private(j)
do i=2,2
  j=i
  call sub(i)
enddo
!$omp end parallel do
end 

subroutine sub(i)
common/com/j
  print *,'PASS',i+j
end 
