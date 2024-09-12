call test01()
call test02()
call test03()
call test04()
call test05()
print *,'pass'
end
subroutine test01()
type ty1
  sequence
  integer :: arr(10) = (/1,2,3,4,5,6,7,8,9,10/)
end type
type (ty1) :: str1,str2
equivalence (str1,str2)
if(str1%arr(1).ne.1) print *,"err 1 "
call sub1(str1)
end
subroutine test02()
type ty1
  sequence
  integer :: arr(10) = (/1,2,3,4,5,6,7,8,9,10/)
end type
save
type (ty1) :: str1,str2
equivalence (str1,str2)
if(str1%arr(1).ne.1) print *,"err 1 "
call sub1(str1)
end
subroutine test03()
type ty0
  sequence
  integer :: arr(10) = (/1,2,3,4,5,6,7,8,9,10/)
end type
type ty1
  sequence
type (ty0) :: sss
end type
type (ty1) :: str1,str2
equivalence (str1,str2)
if(str1%sss%arr(1).ne.1) print *,"err 1 "
call sub2(str1)
end
subroutine test04()
type ty0
  sequence
  integer :: arr(10) = (/1,2,3,4,5,6,7,8,9,10/)
end type
type ty1
  sequence
type (ty0) :: sss
end type
save
type (ty1) :: str1,str2
equivalence (str1,str2)
if(str1%sss%arr(1).ne.1) print *,"err 1 "
call sub2(str1)
end
module mod05
type ty0
  sequence
  integer :: arr(10) = (/1,2,3,4,5,6,7,8,9,10/)
end type
type ty1
  sequence
type (ty0) :: sss
end type
save
type (ty1) :: str1,str2
equivalence (str1,str2)
end
subroutine test05()
use mod05
if(str1%sss%arr(1).ne.1) print *,"err 1 "
call sub2(str1)
end

subroutine sub2(str1)
type ty0
  sequence
  integer :: arr(10) = (/1,2,3,4,5,6,7,8,9,10/)
end type
type ty1
  sequence
type (ty0) :: sss
end type
save
type (ty1) :: str1
if(str1%sss%arr(1).ne.1) print *,"err 1 "
end

subroutine sub1(str1)
type ty1
  sequence
  integer :: arr(10) = (/1,2,3,4,5,6,7,8,9,10/)
end type
save
type (ty1) :: str1
if(str1%arr(1).ne.1) print *,"err 1 "
end

