type ty1
integer :: v
end type
type(ty1) :: sss
integer :: x
x=1
sss%v=1
x=x
sss%v=sss%v
!$omp atomic capture
sss%v=x
x=(sss%v)
!$omp endatomic 
print *,'pass'
end
