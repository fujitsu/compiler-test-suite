integer::a(2),j
j=0
!$omp do firstprivate(k)
do l=1,2
k=1
!$omp  task depend(out:a(k+j))
!$omp  end task
!$omp  task depend(inout:a(k+j))
!$omp  end task
!$omp  task depend(in:a(k+j))
!$omp  end task

enddo 
!$omp end do
print *,'pass'
end
