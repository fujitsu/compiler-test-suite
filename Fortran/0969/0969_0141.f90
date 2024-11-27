module mod01
 interface
  subroutine sub01(arg01)
   integer :: arg01
  end subroutine
 end interface
end module

module mod02
 use mod01, ms1 => sub01
 procedure(ms1) :: sub01
end module

module mod03
 use mod02, msub1 => sub01
 procedure(ms1), pointer :: sub01
 contains
  subroutine m3sub01()
   sub01 => msub1
  end subroutine
end module

use mod03

call m3sub01()

print *,'pass'

end

subroutine sub01(arg01)
 integer :: arg01
end subroutine
