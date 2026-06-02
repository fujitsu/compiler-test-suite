subroutine test01(ic)
common/com01/ i3,iarr(10)
integer ic(iarr(i3))
ic(2)=100
!$omp parallel private(ic)
ic(2)=10
if (ic(2)/=10)print *,"fail"
!$omp end parallel
end
integer ic(2)
common/com01/ i3,iarr(10)
i3=3;iarr(3)=2
call test01(ic)
if (ic(2)/=100)print *,'error',ic(2)
print *,'pass'
end
