real(kind=4) r1 /1/
real(kind=8) r2 /1/
real(kind=16) r3 /1/
integer(kind=1) i1 /1/
integer(kind=2) i2 /1/
integer(kind=4) i3 /1/
integer(kind=8) i4 /1/
print *,'pass'
!$omp parallel reduction(min:r1,r2,r3,i1,i2,i3,i4)
r1=min(r1,1.0_4)
r2=min(r2,1.0_8)
r3=min(r3,1.0_16)
i1=min(i1,1_1)
i2=min(i2,1_2)
i3=min(i3,1_4)
i4=min(i4,1_8)
!$omp end parallel
!$omp parallel reduction(max:r1,r2,r3,i1,i2,i3,i4)
r1=max(r1,1.0_4)
r2=max(r2,1.0_8)
r3=max(r3,1.0_16)
i1=max(i1,1_1)
i2=max(i2,1_2)
i3=max(i3,1_4)
i4=max(i4,1_8)
!$omp end parallel
!$omp parallel reduction(iand:i1,i2,i3,i4)
i1=iand(i1,1_1)
i2=iand(i2,1_2)
i3=iand(i3,1_4)
i4=iand(i4,1_8)
!$omp end parallel
!$omp parallel reduction(ior:i1,i2,i3,i4)
i1=ior(i1,1_1)
i2=ior(i2,1_2)
i3=ior(i3,1_4)
i4=ior(i4,1_8)
!$omp end parallel
!$omp parallel reduction(ieor:i1,i2,i3,i4)
i1=ieor(i1,1_1)
i2=ieor(i2,1_2)
i3=ieor(i3,1_4)
i4=ieor(i4,1_8)
!$omp end parallel
end
