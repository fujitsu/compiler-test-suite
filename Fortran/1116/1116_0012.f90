implicit none
integer::a(1)=0
integer::k,l
!$omp parallel firstprivate(k,l)
k=1
!$omp  task depend(out:a(k:k))
l=1
!$omp  task depend(out:a(l:k))
!$omp parallel
do l=1,1
if(a(l)/=0) print *,'err'
enddo
!$omp end parallel

!$omp  end task
!$omp  end task
!$omp end parallel
print *,'pass'
end
