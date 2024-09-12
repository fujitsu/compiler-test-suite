k=1
!$omp parallel
call test(k)
!$omp end parallel
print *,'pass'
end

subroutine test (k)
call test_1(k)
!$omp barrier
call test_1(k)
end

subroutine test_1(k)
j=0
!$omp do
do i=1,k
   j=j+1
enddo
!$omp enddo
end
