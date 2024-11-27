function ifun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1),pointer :: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i2fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s2
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i3fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i4fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i5fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i6fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1),pointer :: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i7fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s2
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i8fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i9fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i10fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function
function i11fun() result(aaa)
type ty1
 integer :: rr
end type
type ty2
 type(ty1) ,pointer:: sss,s1
end type
type(ty2) :: aaa
aaa%sss%rr=1
end function

end
