use mod
call sub()
print *,'pass'
end
module mod
contains
subroutine sub()
type ty1
sequence
integer :: a01 =1
integer :: a02(10) =(/(i,i=1,10)/)+20
integer :: a03 =3
integer :: a04(20) =(/(i,i=1,20)/)+40
end type
type ty2
 type (ty1) :: str1(2)
end type
block
type ty3
type(ty2) :: s(10)=ty2((/(ty1(10,(/(20,j=1,10)/),30,(/(40,j=1,20)/)),i=1,2)/))
end type
type(ty3) :: ss(10)
if (ss(2)%s(1)%str1(2)%a01.ne.10) print *,'err1'
if (ss(2)%s(1)%str1(2)%a02(1).ne.20) print *,'err2'
if (ss(2)%s(1)%str1(2)%a03.ne.30) print *,'err3'
if (ss(2)%s(1)%str1(2)%a04(1).ne.40) print *,'err4'
if (ss(2)%s(1)%str1(1)%a01.ne.10) print *,'err5'
if (ss(2)%s(1)%str1(1)%a02(1).ne.20) print *,'err6'
if (ss(2)%s(1)%str1(1)%a03.ne.30) print *,'err8'
if (ss(2)%s(1)%str1(1)%a04(1).ne.40) print *,'err7'
end block
block
type(ty2) :: s(10)
if (s(1)%str1(2)%a01.ne.1) print *,'err1'
if (s(1)%str1(2)%a02(1).ne.21) print *,'err2'
if (s(1)%str1(2)%a03.ne.3) print *,'err3'
if (s(1)%str1(2)%a04(1).ne.41) print *,'err4'
if (s(1)%str1(1)%a01.ne.1) print *,'err5'
if (s(1)%str1(1)%a02(1).ne.21) print *,'err6'
if (s(1)%str1(1)%a03.ne.3) print *,'err8'
if (s(1)%str1(1)%a04(1).ne.41) print *,'err7'
block
type(ty2) :: f(10)
if (f(1)%str1(2)%a01.ne.1) print *,'err1'
if (f(1)%str1(2)%a02(1).ne.21) print *,'err2'
if (f(1)%str1(2)%a03.ne.3) print *,'err3'
if (f(1)%str1(2)%a04(1).ne.41) print *,'err4'
if (f(1)%str1(1)%a01.ne.1) print *,'err5'
if (f(1)%str1(1)%a02(1).ne.21) print *,'err6'
if (f(1)%str1(1)%a03.ne.3) print *,'err8'
if (f(1)%str1(1)%a04(1).ne.41) print *,'err7'
if (s(1)%str1(2)%a01.ne.1) print *,'err1'
if (s(1)%str1(2)%a02(1).ne.21) print *,'err2'
if (s(1)%str1(2)%a03.ne.3) print *,'err3'
if (s(1)%str1(2)%a04(1).ne.41) print *,'err4'
if (s(1)%str1(1)%a01.ne.1) print *,'err5'
if (s(1)%str1(1)%a02(1).ne.21) print *,'err6'
if (s(1)%str1(1)%a03.ne.3) print *,'err8'
if (s(1)%str1(1)%a04(1).ne.41) print *,'err7'
end block
block
type(ty2) :: v(10)
if (v(1)%str1(2)%a01.ne.1) print *,'err1'
if (v(1)%str1(2)%a02(1).ne.21) print *,'err2'
if (v(1)%str1(2)%a03.ne.3) print *,'err3'
if (v(1)%str1(2)%a04(1).ne.41) print *,'err4'
if (v(1)%str1(1)%a01.ne.1) print *,'err5'
if (v(1)%str1(1)%a02(1).ne.21) print *,'err6'
if (v(1)%str1(1)%a03.ne.3) print *,'err8'
if (v(1)%str1(1)%a04(1).ne.41) print *,'err7'
if (s(1)%str1(2)%a01.ne.1) print *,'err1'
if (s(1)%str1(2)%a02(1).ne.21) print *,'err2'
if (s(1)%str1(2)%a03.ne.3) print *,'err3'
if (s(1)%str1(2)%a04(1).ne.41) print *,'err4'
if (s(1)%str1(1)%a01.ne.1) print *,'err5'
if (s(1)%str1(1)%a02(1).ne.21) print *,'err6'
if (s(1)%str1(1)%a03.ne.3) print *,'err8'
if (s(1)%str1(1)%a04(1).ne.41) print *,'err7'
end block
end block
block
type(ty2) :: r(10)
if (r(1)%str1(2)%a01.ne.1) print *,'err1'
if (r(1)%str1(2)%a02(1).ne.21) print *,'err2'
if (r(1)%str1(2)%a03.ne.3) print *,'err3'
if (r(1)%str1(2)%a04(1).ne.41) print *,'err4'
if (r(1)%str1(1)%a01.ne.1) print *,'err5'
if (r(1)%str1(1)%a02(1).ne.21) print *,'err6'
if (r(1)%str1(1)%a03.ne.3) print *,'err8'
if (r(1)%str1(1)%a04(1).ne.41) print *,'err7'
block
type ty3
type(ty2) :: s(10)=ty2((/(ty1(10,(/(20,j=1,10)/),30,(/(40,j=1,20)/)),i=1,2)/))
end type
type(ty3) :: ss(10)
if (ss(2)%s(1)%str1(2)%a01.ne.10) print *,'err1'
if (ss(2)%s(1)%str1(2)%a02(1).ne.20) print *,'err2'
if (ss(2)%s(1)%str1(2)%a03.ne.30) print *,'err3'
if (ss(2)%s(1)%str1(2)%a04(1).ne.40) print *,'err4'
if (ss(2)%s(1)%str1(1)%a01.ne.10) print *,'err5'
if (ss(2)%s(1)%str1(1)%a02(1).ne.20) print *,'err6'
if (ss(2)%s(1)%str1(1)%a03.ne.30) print *,'err8'
if (ss(2)%s(1)%str1(1)%a04(1).ne.40) print *,'err7'
end block
block
type ty3
type(ty2) :: s(10)=ty2((/(ty1(10,(/(20,j=1,10)/),30,(/(40,j=1,20)/)),i=1,2)/))
end type
type(ty3) :: ss(10)
if (ss(2)%s(1)%str1(2)%a01.ne.10) print *,'err1a'
if (ss(2)%s(1)%str1(2)%a02(1).ne.20) print *,'err2'
if (ss(2)%s(1)%str1(2)%a03.ne.30) print *,'err3'
if (ss(2)%s(1)%str1(2)%a04(1).ne.40) print *,'err4'
if (ss(2)%s(1)%str1(1)%a01.ne.10) print *,'err5'
if (ss(2)%s(1)%str1(1)%a02(1).ne.20) print *,'err6'
if (ss(2)%s(1)%str1(1)%a03.ne.30) print *,'err8'
if (ss(2)%s(1)%str1(1)%a04(1).ne.40) print *,'err7'
block
ss =ty3(ty2((/(ty1(11,(/(21,j=1,10)/),31,(/(41,j=1,20)/)),i=1,2)/)))
if (ss(2)%s(1)%str1(2)%a01.ne.11) print *,'err1'
if (ss(2)%s(1)%str1(2)%a02(1).ne.21) print *,'err2'
if (ss(2)%s(1)%str1(2)%a03.ne.31) print *,'err3'
if (ss(2)%s(1)%str1(2)%a04(1).ne.41) print *,'err4'
if (ss(2)%s(1)%str1(1)%a01.ne.11) print *,'err5'
if (ss(2)%s(1)%str1(1)%a02(1).ne.21) print *,'err6'
if (ss(2)%s(1)%str1(1)%a03.ne.31) print *,'err8'
if (ss(2)%s(1)%str1(1)%a04(1).ne.41) print *,'err7'
end block
end block
block
type ty3
type(ty2) :: s(10)=ty2((/(ty1(11,(/(21,j=1,10)/),31,(/(41,j=1,20)/)),i=1,2)/))
end type
type(ty3) :: ss(10,1)
if (ss(2,1)%s(1)%str1(2)%a01.ne.11) print *,'err1'
if (ss(2,1)%s(1)%str1(2)%a02(1).ne.21) print *,'err2'
if (ss(2,1)%s(1)%str1(2)%a03.ne.31) print *,'err3'
if (ss(2,1)%s(1)%str1(2)%a04(1).ne.41) print *,'err4'
if (ss(2,1)%s(1)%str1(1)%a01.ne.11) print *,'err5'
if (ss(2,1)%s(1)%str1(1)%a02(1).ne.21) print *,'err6'
if (ss(2,1)%s(1)%str1(1)%a03.ne.31) print *,'err8'
if (ss(2,1)%s(1)%str1(1)%a04(1).ne.41) print *,'err7'
end block
end block
end subroutine
end
