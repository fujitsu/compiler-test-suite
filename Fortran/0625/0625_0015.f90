module mod01
 interface m01_sub
  module procedure m01_sub01, m01_sub02
 end interface
 contains
  subroutine m01_sub01(m01_s01_arg01)
   type ty01
    sequence
    integer          :: ty01_component
   end type
   type (ty01) :: m01_s01_arg01
  end subroutine
  subroutine m01_sub02(m01_s02_arg01)
   type ty01
    sequence
    integer, pointer :: ty01_component
   end type
   type (ty01) :: m01_s02_arg01
  end subroutine
end module

module mod02
 interface m02_sub
  module procedure m02_sub01, m02_sub02
 end interface
 contains
  subroutine m02_sub01(m02_s01_arg01)
   type ty02
    sequence
    integer              :: ty02_component
   end type
   type (ty02) :: m02_s01_arg01
  end subroutine
  subroutine m02_sub02(m02_s02_arg01)
   type ty02
    sequence
    integer, allocatable :: ty02_component
   end type
   type (ty02) :: m02_s02_arg01
  end subroutine
end module

subroutine sub01()
 use mod01
 type ty01
  sequence
  integer          :: ty01_component
 end type
 call m01_sub(ty01(1))
end subroutine

subroutine sub02()
 use mod01
 type ty01
  sequence
  integer, pointer :: ty01_component
 end type
 call m01_sub(ty01(null()))
end subroutine

subroutine sub03()
 use mod02
 type ty02
  sequence
  integer              :: ty02_component
 end type
 call m02_sub(ty02(1))
end subroutine

subroutine sub04()
 use mod02
 type ty02
  sequence
  integer, allocatable :: ty02_component
 end type
 integer, allocatable :: ia
 allocate(ia)
 ia = 1
 call m02_sub(ty02(ia))
end subroutine

print *,'pass'

end
