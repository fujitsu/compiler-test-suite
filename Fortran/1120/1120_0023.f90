subroutine sub(i1,i2,i3,i4)
integer :: i1,i2,i3,i4
!$omp parallel
!$omp single private(i1)
    i1=1
!$omp end single
!$omp single private(i2)
    i2=2
!$omp end single
!$omp single private(i3)
    i3=3
!$omp flush (i4)
    i4=4
!$omp end single
!$omp end parallel
end
integer :: i1,i2,i3,i4
call sub(i1,i2,i3,i4)
print *,'pass'
end
