module mod01
 type ty01
  integer :: i01
 end type
 contains
  subroutine m01_sub01()
   type (ty01) :: t01
   call sub01(t01)
  end subroutine
end module

print *,'pass'

end

subroutine sub01(s01_arg01)
 use mod01
 type (ty01) :: s01_arg01
end subroutine
