integer a(3)
do concurrent(i=1:3,.true._1)
!$omp task
 a(i)=1
!$omp end  task
end do
print *,'pass'
end