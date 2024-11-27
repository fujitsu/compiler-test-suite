call sub01()
call sub02()
call sub03()
call sub04()

end

subroutine sub01()
 interface generate_name01
  function ifunc01() result(irst01)
   integer :: irst01
  end function
 end interface
 print *,generate_name01()
end subroutine

subroutine sub02()
 type generate_name01
  integer :: ii01 = 1
 end type
 type (generate_name01) :: gn01
 print *,generate_name01()
end subroutine

subroutine sub03()
 interface generate_name01
  function ifunc01() result(irst01)
   integer :: irst01
  end function
 end interface
 type generate_name01
  integer :: ii01
 end type
 type (generate_name01) :: gn01
 print *,generate_name01()
end subroutine

subroutine sub04()
 type generate_name01
  integer :: ii01
 end type
 interface generate_name01
  function ifunc01() result(irst01)
   integer :: irst01
  end function
 end interface
 type (generate_name01) :: gn01
 print *,generate_name01()
end subroutine

function ifunc01() result(irst01)
 integer :: irst01
 irst01 = 1
end function

