type ty1
integer :: x(10),v(20)
end type
type(ty1) ::str
integer :: v(10),vv
integer :: y(10),yy
ii=1
str%x=1
str%v=1
vv=1
yy=1
v=1
y=1
!$omp atomic capture
vv=yy
yy=1+ii
!$omp end atomic
!$omp atomic capture
vv=yy
yy=yy-1
!$omp end atomic
!$omp atomic capture
str%v(1)=str%x(1)
str%x(1)=1-ii
!$omp end atomic
!$omp atomic capture
v(1)=y(1)
y(1)=1-ii
!$omp end atomic
v=v
vv=vv
y=y
yy=yy
print *,'pass'
end
