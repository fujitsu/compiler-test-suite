integer a(3)
do concurrent(i=1:3,.true._8)
!$omp parallel firstprivate(i)
 a(i)=1
!$omp end  parallel
end do
print *,'pass'
end
