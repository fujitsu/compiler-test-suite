type ty1
integer :: x(10)
integer :: xa(10)
end type
type(ty1) ::str
type(ty1) ::str2
integer :: x(10)
integer :: v(10)
v=1
x=1
i=1
str%x=1
!$omp atomic capture
v(1)=x(1)
x(2)=-i
!$omp end atomic
v=v
print *,'pass'
end
