call test01()
call test02()
print *,'pass'
end

subroutine test01()
save
common /com1/ i1
common /com2/ i2
common /com3/ i3
common /com4/ i4
common /com5/ i5
common /com6/ i6
common /com7/ i7
common /com8/ i8
common /com9/ i9
data a6 /1/
data aa /1/
data ac /1/
integer av
!$OMP threadprivate(/com1/,a2)
!$OMP threadprivate(a3,/com2/)
!$OMP threadprivate(a4,/com3/,a5)
!$OMP threadprivate(/com4/,a6,/com5/)
!$OMP threadprivate(/com6/,a7,a8,/com7/,a9)
!$OMP threadprivate(/com8/,/com9/,aa)
!$OMP threadprivate(a1)
!$OMP threadprivate(c,a2a)
end subroutine

module mod02
save
common /com1/ i1
common /com2/ i2
common /com3/ i3
common /com4/ i4
common /com5/ i5
common /com6/ i6
common /com7/ i7
common /com8/ i8
common /com9/ i9
data a6 /1/
data aa /1/
data ac /1/
integer av
!$OMP threadprivate(/com1/,a2)
!$OMP threadprivate(a3,/com2/)
!$OMP threadprivate(a4,/com3/,a5)
!$OMP threadprivate(/com4/,a6,/com5/)
!$OMP threadprivate(/com6/,a7,a8,/com7/,a9)
!$OMP threadprivate(/com8/,/com9/,aa)
!$OMP threadprivate(a1)
!$OMP threadprivate(c,a2a)
end

subroutine test02()
use mod02
end

