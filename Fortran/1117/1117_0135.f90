type ty1
 SEQUENCE
 integer :: i=1
end type
type (ty1) :: str2,str3(1),str4(1),str5,str6,str7
call test01(str2,str3,str4,1,str5,str6,str7)
print *,'pass'
end

subroutine test03(str2,str3,str4,j)
common /com/ i
type ty1
 SEQUENCE
 integer :: i=1
end type
type (ty1) :: str1,str2(2:10),str3(j:10),str4(i),str6(100),str7

call OMP_SET_NUM_THREADS(1)
!$omp parallel private(str1,str2,str3,str4,str6,str7)
!$omp end parallel
end

subroutine test02(str2)
common /com/ i
type ty1
 SEQUENCE
 integer :: i=1
end type
type (ty1) :: str1,str2,str3(1),str4(i),str6,str7
pointer str7
allocatable :: str6(:)
target str1
optional ::str2

call OMP_SET_NUM_THREADS(1)
!$omp parallel private(str1,str2,str3,str4,str6,str7)
!$omp end parallel
end

subroutine test01(str2,str3,str4,i,str5,str6,str7)
type ty1
 SEQUENCE
 integer :: i=1
end type
type (ty1) :: str1,str2,str3(1),str4(i),str5,str6,str7
intent(in) :: str5
intent(inout) :: str6
intent(out) :: str7

str7%i=100

call OMP_SET_NUM_THREADS(1)
!$omp parallel private(str1,str2,str3,str4,str6,str7)
!$omp end parallel
end
