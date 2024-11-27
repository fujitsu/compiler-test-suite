call sub01()
call sub02()
print *,'pass'
end

subroutine sub01()
type ty1
 integer :: a01=11
 integer :: a02=12
end type
type (ty1) :: str1= ty1(1,2)
type (ty1) :: str2
type ty2
 type (ty1) :: s
end type
type (ty2) :: str3= ty2(ty1(3,4))
type (ty2) :: str4
type ty3
 type (ty1) :: s=ty1(3,5)
end type
type (ty3) :: str5= ty3(ty1(0,1))
type (ty3) :: str6
type (ty3) :: str7= ty3(ty1(0,1))

if (str1%a01.ne.1) write(6,*) "NG"
if (str1%a02.ne.2) write(6,*) "NG"
if (str2%a01.ne.11) write(6,*) "NG"
if (str2%a02.ne.12) write(6,*) "NG"
if (str3%s%a01.ne.3) write(6,*) "NG"
if (str3%s%a02.ne.4) write(6,*) "NG"
if (str4%s%a01.ne.11) write(6,*) "NG"
if (str4%s%a02.ne.12) write(6,*) "NG"
if (str5%s%a01.ne.0) write(6,*) "NG"
if (str5%s%a02.ne.1) write(6,*) "NG"
if (str6%s%a01.ne.3) write(6,*) "NG"
if (str6%s%a02.ne.5) write(6,*) "NG"
if (str7%s%a01.ne.0) write(6,*) "NG"
if (str7%s%a02.ne.1) write(6,*) "NG"

end

subroutine sub02()
type ty1
 integer :: a01=11
 integer :: jj     
 integer :: a02=12
end type
type (ty1) :: str1= ty1(1,3,2)
type (ty1) :: str2
type ty2
 integer j1
 type (ty1) :: s
 integer j2
end type
type (ty2) :: str3= ty2(7,ty1(3,4,4),9)
type (ty2) :: str4
type ty3
 integer j1
 type (ty1) :: s=ty1(3,4,5)
 integer j2
end type
type (ty3) :: str5= ty3(5,ty1(0,4,1),8)
type (ty3) :: str6
type (ty3) :: str7= ty3(2,ty1(0,4,1),8)

if (str1%a01.ne.1) write(6,*) "NG"
if (str1%a02.ne.2) write(6,*) "NG"
if (str2%a01.ne.11) write(6,*) "NG"
if (str2%a02.ne.12) write(6,*) "NG"
if (str3%s%a01.ne.3) write(6,*) "NG"
if (str3%s%a02.ne.4) write(6,*) "NG"
if (str4%s%a01.ne.11) write(6,*) "NG"
if (str4%s%a02.ne.12) write(6,*) "NG"
if (str5%s%a01.ne.0) write(6,*) "NG"
if (str5%s%a02.ne.1) write(6,*) "NG"
if (str6%s%a01.ne.3) write(6,*) "NG"
if (str6%s%a02.ne.5) write(6,*) "NG"
if (str7%s%a01.ne.0) write(6,*) "NG"
if (str7%s%a02.ne.1) write(6,*) "NG"

end
