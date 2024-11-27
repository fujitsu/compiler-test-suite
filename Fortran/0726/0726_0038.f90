module mod01
type ty1
private
  integer ::a=1
end type
interface aaa_v
 module procedure sub1_mod01,sub2_mod01
end interface
contains
subroutine sub1_mod01(str,val)
type (ty1) :: str
integer*4 :: val
 val = 1
a=str%a
end subroutine
subroutine sub2_mod01(str,val)
type (ty1) :: str
integer*1 :: val
 val = 2
a=str%a
end subroutine
end
module mod02
type ty1
private
  integer ::a=1
end type
interface aaa_v
 module procedure sub3_mod01,sub4_mod01
end interface
contains
subroutine sub3_mod01(str,val)
type (ty1) :: str
integer*4 :: val
 val = 10
a=str%a
end subroutine
subroutine sub4_mod01(str,val)
type (ty1) :: str
integer*1 :: val
 val = 20
a=str%a
end subroutine
end

subroutine test01()
use mod01
use mod02 ,ty => ty1
type (ty1) :: str1
type (ty)  :: str2
call aaa_v(str1,i)
if (i.ne.1) write(6,*) "NG"
call aaa_v(str2,i)
if (i.ne.10) write(6,*) "NG"
end

subroutine test02()
use mod01 ,tt => ty1
use mod02 ,ty => ty1
type (tt) :: str1
type (ty)  :: str2
call aaa_v(str1,i)
if (i.ne.1) write(6,*) "NG"
call aaa_v(str2,i)
if (i.ne.10) write(6,*) "NG"
end

subroutine test03()
use mod02 
use mod01 ,ty => ty1
type (ty) :: str1
type (ty1)  :: str2
call aaa_v(str1,i)
if (i.ne.1) write(6,*) "NG"
call aaa_v(str2,i)
if (i.ne.10) write(6,*) "NG"
end

subroutine test04()
use mod01 ,tt => ty1
use mod02
type (tt) :: str1
type (ty1)  :: str2
call aaa_v(str1,i)
if (i.ne.1) write(6,*) "NG"
call aaa_v(str2,i)
if (i.ne.10) write(6,*) "NG"
end

subroutine test05()
use mod02 ,ty => ty1
use mod01 ,tt => ty1
type (tt ) :: str1
type (ty)  :: str2
call aaa_v(str1,i)
if (i.ne.1) write(6,*) "NG"
call aaa_v(str2,i)
if (i.ne.10) write(6,*) "NG"
end

call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end
