subroutine s1
common /cmn/ k1,k2,k3
!$omp threadprivate(/cmn/)
integer omp_get_thread_num
k1=1
k2=2
k3=3
!$omp parallel copyin (k1,k2)
if (k1/=1) print *,1131
if (k2/=2) print *,1132
k1=11+omp_get_thread_num()
k2=12+omp_get_thread_num()
k3=13
if (k1/=11+omp_get_thread_num()) print *,121
if (k2/=12+omp_get_thread_num()) print *,122
if (k3/=13) print *,123
k3=13+omp_get_thread_num()
!$omp parallel copyin (/cmn/)
k1=k1+1
k2=k2+2
k3=k3+3
write(1,*) k1
write(2,*) k2
write(3,*) k3
!$omp end parallel
k1=k1+1
k2=k2+2
k3=k3+3
write(1,*) k1
write(2,*) k2
write(3,*) k3
!$omp end parallel
write(1,*) k1
write(2,*) k2
write(3,*) k3
end
call omp_set_num_threads(2)
call s1
call chk
print *,'pass'
end
subroutine chk
rewind 1
rewind 2
rewind 3
k=0
do 
 read(1,*,end=1) kk
 k=k+kk
end do
1 if (k/=65) print *,1,k
k=0
do 
 read(2,*,end=2) kk
 k=k+kk
end do
2 if (k/=78) print *,2,k
k=0
do 
 read(3,*,end=3) kk
 k=k+kk
end do
3 if (k/=91) print *,3,k
end
