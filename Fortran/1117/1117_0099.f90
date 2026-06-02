call test01()
print *,'pass'
end

subroutine test01()
pointer (i,j)
!$omp parallel default(private)
i=1
!$omp do
do ii=1,10
i=1
end do
!$omp enddo
!$omp endparallel
end subroutine
