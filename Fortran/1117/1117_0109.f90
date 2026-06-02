call test02()
print *,'pass'
end

subroutine test02()
real*4 ::r1 =1
real*8 ::r2 =1
real*16::r3 =1
real*4 ::c1 =1
real*8 ::c2 =1
real*16::c3 =1
integer*1 :: i1 =1
integer*2 :: i2 =1
integer*4 :: i3 =1
integer*8 :: i4 =1

!$omp parallel reduction(max:r1,r2,r3)
!$omp end parallel
!$omp parallel reduction(max:r1,r2)
!$omp end parallel
!$omp parallel reduction(max:r1,r3)
!$omp end parallel
!$omp parallel reduction(max:r2,r3)
!$omp end parallel
!$omp parallel reduction(max:i1,r1)
!$omp end parallel
!$omp parallel reduction(max:i1,r2)
!$omp end parallel
!$omp parallel reduction(max:i1,r3)
!$omp end parallel
!$omp parallel reduction(max:i1)
!$omp end parallel
!$omp parallel reduction(max:r1)
!$omp end parallel
!$omp parallel reduction(max:r2)
!$omp end parallel
!$omp parallel reduction(max:r3)
!$omp end parallel
!$omp parallel reduction(max:i1,r1,r2,r3)
!$omp end parallel
!$omp parallel reduction(max:i1,r1,i2)
!$omp end parallel
!$omp parallel reduction(max:c1,i1,r1,i2)
!$omp end parallel
!$omp parallel reduction(max:r3,i1,i2,c3)
!$omp end parallel
!$omp parallel reduction(max:r3,i1,i2,c3,i3,i4)
!$omp end parallel
!$omp parallel reduction(min:r3,i1,i2,c2,i3,i4)
!$omp end parallel
!$omp parallel reduction(min:r3,r2,i1,i2,i3,i4)
!$omp end parallel
!$omp parallel reduction(min:r3,r2,i1,i2,i3,i4,r1)
!$omp end parallel
!$omp parallel reduction(min:c2,r2,i1,i2,i3,i4)
!$omp end parallel
!$omp parallel reduction(min:r3,r2,i1,c2,i2,r1,i3,i4)
!$omp end parallel

end
