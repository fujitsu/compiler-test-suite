integer::k
k=100
!$omp task depend(in:k)
!$omp taskwait
if(k/=100) print *,"ng1"
!$omp end task
!$omp task depend(out:k)
!$omp taskwait
if(k/=100) print *,"ng2"
!$omp end task
!$omp task depend(inout:k)
!$omp taskwait
if(k/=100) print *,"ng3"
!$omp end task
print *,"pass"
end program

