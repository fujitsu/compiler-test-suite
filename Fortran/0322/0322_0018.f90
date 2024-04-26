call test01()
call test02()
print *,'pass'
end

module mod01
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
!$OMP threadprivate(a1)
!$OMP threadprivate(/com1/,a2)
!$OMP threadprivate(a3,/com2/)
!$OMP threadprivate(a4,/com3/,a5)
!$OMP threadprivate(/com4/,a6,/com5/)
!$OMP threadprivate(/com6/,a7,a8,/com7/,a9)
!$OMP threadprivate(/com8/,/com9/,aa)
end
subroutine test01()
use mod01
end subroutine

module mod02
save
integer a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,aa
private :: a3,a4,a5
common /com4/ i4
common /com5/ i5
common /com6/ i6
common /com7/ i7
common /com8/ i8
common /com9/ i9
common /com1/ i1
common /com2/ i2
common /com3/ i3
!$OMP threadprivate(/com6/,a7,a8,/com7/,a9)
!$OMP threadprivate(a3,/com2/)
!$OMP threadprivate(a1)
!$OMP threadprivate(/com4/,a6,/com5/)
!$OMP threadprivate(/com1/,a2)
!$OMP threadprivate(a4,/com3/,a5)
!$OMP threadprivate(/com8/,/com9/,aa)
end
subroutine test02()
use mod02
end subroutine


module mod03
save
integer a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,aa
private 
common /com4/ i4
common /com5/ i5
common /com6/ i6
common /com7/ i7
common /com8/ i8
common /com9/ i9
common /com1/ i1
common /com2/ i2
common /com3/ i3
common /coma/ ia
common /comb/ ib
!$OMP threadprivate(/com6/,a7,a8,/com7/,a9)
!$OMP threadprivate(a3,/com2/)
!$OMP threadprivate(a1)
!$OMP threadprivate(/com4/,a6,/com5/)
!$OMP threadprivate(/com1/,a2)
!$OMP threadprivate(a4,/com3/,a5)
!$OMP threadprivate(/com8/,/com9/,aa)
!$OMP threadprivate(aa1,aa2,aa3,/coma/,/comb/,aa4)
end
subroutine test03()
use mod03
save
!$OMP threadprivate(a1,a2,a3,a4,a5,a6,a7,aaa)
end subroutine
