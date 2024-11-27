!$omp parallel default(firstprivate)
!$omp endparallel
!$omp parallel do default(firstprivate)
do i=1,10
enddo
!$omp endparallel do
print *,"pass"
end
