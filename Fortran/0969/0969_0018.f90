call sub01()
call sub02()
call sub03()

end

subroutine sub01()
 interface aaa
  function ifun1()
  end function
 end interface
 type aaa
  integer :: i
 end type
 print *,aaa(1)
end subroutine

subroutine sub02()
 interface bbb
  function ifun2(arg01)
   integer :: arg01
  end function
 end interface
 interface ccc
  function ifun3(arg01, arg02)
   integer           :: arg01
   integer, optional :: arg02
  end function
 end interface
 type bbb
  integer :: i
 end type
 type ccc
  integer :: i
 end type
 print *,bbb(1)
 print *,ccc(1)
end subroutine

subroutine sub03()
 interface generic_name01
  function ifunc01(if01_arg01) result(irst01)
   integer :: if01_arg01
   integer :: irst01
  end function
 end interface
 interface generic_name02
  function ifunc02() result(irst02)
   integer :: irst02
  end function
  function ifunc03(if03_arg01) result(irst03)
   integer :: if03_arg01
   integer :: irst03
  end function
  function ifunc04(if04_arg01, if04_arg02) result(irst04)
   integer :: if04_arg01
   integer :: if04_arg02
   integer :: irst04
  end function
 end interface

 type generic_name01
  integer :: ii01 = 3
  integer :: ii02 = 5
 end type

 type generic_name02
  integer :: if03_arg01 = 11
  integer :: if04_arg01 = 22
  integer :: if04_arg02 = 33
 end type

 print *,generic_name01()
 print *,generic_name01(2)
 print *,generic_name01(if01_arg01 = 2)
 print *,generic_name01(ii01       = 2)
 print *,generic_name01(ii02       = 2)

 print *,generic_name02()
 print *,generic_name02(1)
 print *,generic_name02(if03_arg01 = 7)
 print *,generic_name02(if04_arg01 = 7)
 print *,generic_name02(if04_arg02 = 7)

 print *,generic_name02(if03_arg01 = 7, if04_arg01 = 7)
 print *,generic_name02(if03_arg01 = 7, if04_arg02 = 7)
 print *,generic_name02(if04_arg01 = 7, if03_arg01 = 7)
 print *,generic_name02(if04_arg01 = 7, if04_arg02 = 7)
 print *,generic_name02(if04_arg02 = 7, if03_arg01 = 7)
 print *,generic_name02(if04_arg02 = 7, if04_arg01 = 7)

 print *,generic_name02(if03_arg01 = 7, if04_arg01 = 7, if04_arg02 = 7)
 print *,generic_name02(if03_arg01 = 7, if04_arg02 = 7, if04_arg01 = 7)
 print *,generic_name02(if04_arg01 = 7, if03_arg01 = 7, if04_arg02 = 7)
 print *,generic_name02(if04_arg01 = 7, if04_arg02 = 7, if03_arg01 = 7)
 print *,generic_name02(if04_arg02 = 7, if03_arg01 = 7, if04_arg01 = 7)
 print *,generic_name02(if04_arg02 = 7, if04_arg01 = 7, if03_arg01 = 7)

end subroutine

function ifun1()
 ifun1 = 2
end function

function ifun2(arg01)
 integer :: arg01
 ifun2 = arg01
end function

function ifun3(arg01, arg02)
 intrinsic         :: present
 integer           :: arg01
 integer, optional :: arg02
 if (present(arg02)) then
  ifun3 = arg01 + arg02
 else
  ifun3 = arg01
 end if
end function

function ifunc01(if01_arg01) result(irst01)
 integer :: if01_arg01
 integer :: irst01
 irst01 = if01_arg01
end function

function ifunc02() result(irst02)
 integer :: irst02
 irst02 = 0
end function

function ifunc03(if03_arg01) result(irst03)
 integer :: if03_arg01
 integer :: irst03
 irst03 = if03_arg01
end function

function ifunc04(if04_arg01, if04_arg02) result(irst04)
 integer :: if04_arg01
 integer :: if04_arg02
 integer :: irst04
 irst04 = if04_arg01 + if04_arg02
end function
