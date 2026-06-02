call test01()
print *,'pass'
end
subroutine test01()
common/com/k
!$omp parallel default(private) shared(/com/,v) 
k=1
!$omp do private(k)
do j=1,10
end do
!$omp enddo
!$omp do private(v)
do j=1,10
end do
!$omp enddo
!$omp endparallel
end subroutine
