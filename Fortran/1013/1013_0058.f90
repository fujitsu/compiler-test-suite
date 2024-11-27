integer function fun()
common/com/i;
!$omp threadprivate(/com/)
 fun = i
end

common/com/i
!$omp threadprivate(/com/)
!$omp parallel do 
do j=1,100
   if (i.ne.0) stop "NG"
end do
print *,"PASS"
end
