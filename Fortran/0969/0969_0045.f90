module mod01
 interface generate_name01
  function ifunc01() result(irst01)
   integer(kind = 4) :: irst01
  end function
 end interface
end module

module mod02
 type generate_name01
  integer(kind = 4) :: ii04_01
 end type
end module

module mod03
 use mod02
end module

module mod04
 use mod03
 interface generate_name01
  function ifunc01() result(irst01)
   integer(kind = 4) :: irst01
  end function
 end interface
 contains
  subroutine m04sub01()
   print *,generate_name01()
   print *,generate_name01(2)
  end subroutine
end module

module mod05
 use mod01
 use mod02
end module

program main
 use mod03
 interface generate_name01
  function ifunc01() result(irst01)
   integer(kind = 4) :: irst01
  end function
 end interface
 print *,generate_name01()
 print *,generate_name01(2)
end program main

subroutine sub01()
 use mod01
 use mod02
 print *,generate_name01()   
 print *,generate_name01(2)  
end subroutine

subroutine sub02()
 use mod04
 print *,generate_name01()
 print *,generate_name01(2)
end subroutine

subroutine sub03()
 use mod05
 print *,generate_name01()   
 print *,generate_name01(2)  
end subroutine

function ifunc01() result(irst01)
 integer(kind = 4) :: irst01
 irst01 = 4
end function


