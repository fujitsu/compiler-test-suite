type ty1
integer :: x(10),v(20)
end type
type(ty1) ::str
integer :: v(10),vv
integer :: y(10),yy,yy1
str%x=1
vv=1
yy=1
v=1
y=1
yy1=1
!$omp atomic capture
vv=yy
yy=yy1+yy
!$omp end atomic
vv=vv
y=y
yy=yy
print *,'pass'
end
