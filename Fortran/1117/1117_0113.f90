call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test03()
type ty0
  sequence
  integer :: a(10)
end type
type ty1
  sequence
  integer :: arr(10)
  integer :: brr(10)
  type(ty0)::crr(10)
end type
type(ty1) :: str,strcom
common /com/ strcom

!$omp parallel private(str)
str= ty1((/1,2,3,4,5,6,7,8,9,10/),(/(i,i=1,10)/),ty0(1))
!$omp endparallel
!$omp parallel private(/com/,str)
str%arr=1
strcom= ty1((/1,2,3,4,5,6,7,8,9,10/),(/(str%arr(i),i=1,10)/),ty0(1))
!$omp endparallel

end subroutine

subroutine test02()
call sub()
contains
subroutine sub()
common /com02/ ia,arr
integer arr(10)
!$omp parallel private(/com02/)
 arr=1
!$omp parallel private(arr)
 arr=1
!$omp endparallel
!$omp parallel shared(/com02/)
 arr=1
!$omp parallel private(arr)
 arr=1
!$omp endparallel
!$omp parallel private(/com02/)
 arr=1
!$omp parallel private(arr)
 arr=1
!$omp endparallel
!$omp parallel shared(/com02/)
 arr=1
!$omp parallel private(arr)
 arr=1
!$omp endparallel
!$omp parallel private(/com02/)
 arr=1
!$omp endparallel
!$omp parallel private(arr)
 arr=1
!$omp endparallel
 arr=1
!$omp endparallel
 arr=1
!$omp endparallel
 arr=1
!$omp endparallel
 arr=1
!$omp endparallel
end subroutine
end subroutine

subroutine test01()
common /com01/ ia,ib
integer a01(10),a02(10)
a01=1
a02=1

do i=1,10

do ib=1,10
!$omp parallel private(/com01/)
do ia=1,10
a01(ia)=max(a01(ia),1)
end do
!$omp endparallel
a02(ib)=max(a02(ib),1)
end do

end do
end subroutine
