call test01()
call test02()
print *,"pass"
end

subroutine test02()
type ty1
sequence
end type 

type(ty1) :: str ,str2
type ty2
 integer :: x
 type(ty1),pointer :: str(:) =>null()
 integer :: a
end type
type (ty2) ::sss,sss2
parameter (str=ty1())
parameter (sss=ty2(1,null(),2))
if (sss%a.ne.2) print *,'fail'
str2=ty1()
sss2=ty2(1,null(),2)
if (sss2%a.ne.2) print *,'fail'
end


subroutine test01()
type ty1
sequence
end type 

type(ty1) :: str ,str2
type ty2
 integer :: x
 type(ty1) :: str(10) 
 integer :: a
end type
type (ty2) ::sss,sss2
parameter (str=ty1())
parameter (sss=ty2(1,ty1(),2))
if (sss%a.ne.2) print *,'fail'
str2=ty1()
sss2=ty2(1,ty1(),2)
if (sss2%a.ne.2) print *,'fail'
end
