type ty1
integer :: x(10)
end type
type(ty1) ::str
integer :: v(10)
str%x=1
v=1
!$omp atomic capture
v(1)=str%x(1)
str%x(2)=1
!$omp end atomic
v=v
print *,'pass'
end
