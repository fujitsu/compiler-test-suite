!$omp parallel do private(a)
do i=1,1
end do

!$omp parallel do lastprivate(a)
do i=1,1
end  do

print *,'pass'

end
