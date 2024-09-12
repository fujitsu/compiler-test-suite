k=200
call test(k)
print *,'pass ' 
end
subroutine test (k)
!$omp parallel
call test_1(k)
!$omp barrier
!$omp endparallel
end
subroutine test_1(k)
j=0
!$omp do schedule(guided,2)
do i=1,k
   j=j+1
enddo 
end
