type ty1
integer vv(10)
integer :: yy(10)
end type
type(ty1) :: str
str%vv=1
str%yy=1
str%vv=str%vv
str%yy=str%yy
!$omp atomic capture
str%vv(1)=str%yy(1)
str%yy(1)=max(str%yy(1),str%yy(1))
!$omp end atomic
print *,'pass'
end
