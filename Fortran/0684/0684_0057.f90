subroutine test01(ic)
common/com01/ i3,iarr(10)
integer ic(iarr(i3))
!$omp parallel private(ic)
!$omp end parallel
end
print *,'pass'
end
