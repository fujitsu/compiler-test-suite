integer::a(2),j
!$omp single firstprivate(j)
j=0
do k=1,2
!$omp  task depend(out:a(k+j))
!$omp  end task

!$omp  task depend(inout:a(k+j))
!$omp  end task

!$omp  task depend(in:a(k+j))
!$omp  end task

enddo 
!$omp end single
print *,'pass'
end
