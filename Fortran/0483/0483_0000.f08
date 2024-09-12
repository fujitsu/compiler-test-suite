subroutine s1
kk=1
!$omp parallel reduction(+:k1)   private(kk)
do k=1,10
do k1=1,10
   if (k==3) exit
   kk=k
end do
end do
!$omp end parallel 
!$omp parallel reduction(+:k,k1) 
do k1=1,10
do k11=1,10
end do
end do
!$omp end parallel 
!$omp parallel reduction(+:k)  
do k11=1,10
do k111=1,10
end do
end do
!$omp end parallel 
!$omp parallel reduction(+:k1)
do k111=1,10
do k1111=1,10
end do
end do
!$omp end parallel 
end
call omp_set_num_threads(1)
call s1
print *,'pass'
end
