type ty1
integer vv(10)
integer :: yy(10)
end type
type(ty1) :: str,str2
str%vv=1
str%yy=1
str2%yy=1
str%vv=str%vv
str%yy=str%yy
!$omp atomic capture
str%vv(1)=str%yy(1)
str%yy(1)=max(1,1,str2%yy(1),1)
!$omp end atomic
print *,'pass'
end
