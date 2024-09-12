!$omp parallel 
call test01()
!$omp end parallel 
print *,'pass'
end 

subroutine test01()
!$omp workshare
!$omp atomic
i=i+1
!$omp end workshare
end
