subroutine s1
kk=1
!$omp parallel firstprivate(k1)
do k=1,10
do k1=1,10
   if (k==3) exit
end do
end do
!$omp end parallel 
!$omp parallel firstprivate(k,k1)
do ka=1,10
do ka1=1,10
   if (ka==3) exit
end do
end do
!$omp end parallel 
!$omp parallel firstprivate(k)
do kb=1,10
do kb1=1,10
   if (kb==3) exit
end do
end do
!$omp end parallel 
!$omp parallel firstprivate(k1)
do kc=1,10
do kc1=1,10
   if (kc==3) exit
end do
end do
!$omp end parallel 
end
call omp_set_num_threads(1)
call s1
print *,'pass'
end
