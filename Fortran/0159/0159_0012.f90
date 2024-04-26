call sub01()
call sub02()
call sub03()
print *,'pass'
end

subroutine sub01()
 interface aaa
  function ifun1()
  end function
 end interface
 type aaa
  integer :: i
 end type
 type (aaa) :: s
 s=aaa(1)
 if (s%i.ne.1) print *,'err2'
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
 if (bbb(1).ne.1) print *,'err1'
 if (ccc(13).ne.13) print *,'err1'
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
 type(generic_name01) ::ipa
 type(generic_name02) ::ipb
 ipa =generic_name01()
 if (ipa%ii01.ne.3) print *,'err'
 if (ipa%ii02.ne.5) print *,'err'
 if (generic_name01(2).ne.2) print *,'err'
 if (generic_name01(if01_arg01 = 2).ne.2) print *,'err'
 ipa=generic_name01(ii01       = 2)
 if (ipa%ii01.ne.2) print *,'err'
 if (ipa%ii02.ne.5) print *,'err'
 ipa=generic_name01(ii02       = 2)
 if (ipa%ii01.ne.3) print *,'err'
 if (ipa%ii02.ne.2) print *,'err'

 if (generic_name02().ne.0 ) print *,'err'
 if (generic_name02(1).ne.1 ) print *,'err'
 ipb=generic_name02(if04_arg01 = 7)
 if (ipb%if03_arg01.ne.11) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne.33) print *,'ng'

 ipb=generic_name02(if04_arg02 = 7)
 if (ipb%if03_arg01.ne.11) print *,'ng'
 if (ipb%if04_arg01.ne.22) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'

 ipb=generic_name02(if03_arg01 = 7, if04_arg01 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne.33) print *,'ng'
 ipb=generic_name02(if03_arg01 = 7, if04_arg02 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne.22) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'
 ipb=generic_name02(if04_arg01 = 7, if03_arg01 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne.33) print *,'ng'
 if (generic_name02(if04_arg01 = 7, if04_arg02 = 7).ne.14)  print *,'err'
 ipb=    generic_name02(if04_arg02 = 7, if03_arg01 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne.22) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'
 if (generic_name02(if04_arg02 = 7, if04_arg01 = 7).ne.14)  print *,'err'

 ipb=    generic_name02(if03_arg01 = 7, if04_arg01 = 7, if04_arg02 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'
 ipb=    generic_name02(if03_arg01 = 7, if04_arg02 = 7, if04_arg01 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'
 ipb=    generic_name02(if04_arg01 = 7, if03_arg01 = 7, if04_arg02 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'
 ipb=    generic_name02(if04_arg01 = 7, if04_arg02 = 7, if03_arg01 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'
 ipb=    generic_name02(if04_arg02 = 7, if03_arg01 = 7, if04_arg01 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'
 ipb=    generic_name02(if04_arg02 = 7, if04_arg01 = 7, if03_arg01 = 7)
 if (ipb%if03_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg01.ne. 7) print *,'ng'
 if (ipb%if04_arg02.ne. 7) print *,'ng'

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
