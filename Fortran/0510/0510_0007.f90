call s1
print *,'pass'
contains
subroutine s1
type ty
   integer,allocatable::a(:)
end type ty
type (ty) :: str(1),sss
allocate(sss%a(1))
allocate(str(1)%a(1))
sss=sss
str=str
str(1)%a=[0]
if(any(str(1)%a/=[0])) print *,'err'
end subroutine s1
end
