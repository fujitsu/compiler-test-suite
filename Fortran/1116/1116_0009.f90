integer::a(2),j
j=0
!$omp parallel
do k=1,2
!$omp  task depend(out:a(k)) depend(in:a(k+j))  depend(inout:a(k))
!$omp  end task

!$omp  task depend(out:a(k)) depend(in:a(k+j)) depend(inout:a(k))
!$omp  end task

enddo 
!$omp end parallel
print *,'pass'
end
