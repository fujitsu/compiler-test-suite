module mod01
  type :: str
    integer :: iii
  end type
  type(str) :: sss01
end module

module mod02
use mod01,parent01=>str
type,extends(parent01) :: str2
end type
type(str2) :: sss02
end module

module mod03
use mod01,parent02=>str
type,extends(parent02) :: str3
end type
type(str3) :: sss03
end module

use mod02
use mod03
if(same_type_as(sss02,sss01).neqv..false.) print *,'ng1'
if(same_type_as(sss03,sss01).neqv..false.) print *,'ng2'
if(extends_type_of(sss02,sss01).neqv..true.) print *,'ng3'
if(extends_type_of(sss03,sss01).neqv..true.) print *,'ng4'
if(extends_type_of(sss02,sss02).neqv..true.) print *,'ng5'
if(extends_type_of(sss03,sss03).neqv..true.) print *,'ng6'
if(extends_type_of(sss02,sss03).neqv..false.) print *,'ng7'
if(extends_type_of(sss03,sss02).neqv..false.) print *,'ng8'
call sub()
print *,'pass'
contains
subroutine sub()
type(parent01) :: sss01_1
type(parent02) :: sss01_11
type(str2) :: sss02_1
type(str3) :: sss03_1
if(same_type_as(sss02,sss01_1).neqv..false.) print *,'ng9'
if(same_type_as(sss03,sss01_1).neqv..false.) print *,'ng10'
if(same_type_as(sss01_1,sss01_11).neqv..true.) print *,'ng11'
if(extends_type_of(sss02,sss01_1).neqv..true.) print *,'ng12'
if(extends_type_of(sss03,sss01_1).neqv..true.) print *,'ng13'
if(extends_type_of(sss02,sss02_1).neqv..true.) print *,'ng14'
if(extends_type_of(sss03,sss03_1).neqv..true.) print *,'ng15'
if(extends_type_of(sss02,sss03_1).neqv..false.) print *,'ng16'
if(extends_type_of(sss03,sss02_1).neqv..false.) print *,'ng17'
if(same_type_as(sss02_1,sss01).neqv..false.) print *,'ng18'
if(same_type_as(sss03_1,sss01).neqv..false.) print *,'ng19'
if(extends_type_of(sss02_1,sss01).neqv..true.) print *,'ng20'
if(extends_type_of(sss03_1,sss01).neqv..true.) print *,'ng21'
if(extends_type_of(sss02_1,sss02).neqv..true.) print *,'ng22'
if(extends_type_of(sss03_1,sss03).neqv..true.) print *,'ng23'
if(extends_type_of(sss02_1,sss03).neqv..false.) print *,'ng24'
if(extends_type_of(sss03_1,sss02).neqv..false.) print *,'ng25'
end subroutine
end
