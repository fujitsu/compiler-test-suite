type ty1
 integer ,allocatable:: a(:)
end type
type(ty1) :: str(10)
str=ty1((/1,2,3,4,5,6,7,8,9,10/))
call test01()
print *,'pass'
end

subroutine test01()
type ty1
  integer,allocatable,dimension(:) :: a1,a2,a3,a4,a5,a6,a7,a8,a9,a10
  integer,allocatable,dimension(:) :: a11,a12,a13,a14,a15
end type
type(ty1) :: str1(1),str2(1)
integer(kind=4) :: b1(1)/1/

where((/.true./))
 str2=(/ty1(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1)/)
 str2=(/ty1(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1)/)
endwhere

where((/.true./))
 str1=(/ty1(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1)/)
 str1=(/ty1(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1)/)
 str1=(/ty1(b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1,b1)/)
endwhere
end
