type ty01
 integer,allocatable :: a(:)
end type
type(ty01),pointer :: s01 => null()
type ty02
 real   ,allocatable :: a(:)
end type
type(ty02),pointer :: s02 => null()
type ty03
 logical,allocatable :: a(:)
end type
type(ty03),pointer :: s03 => null()
type ty04
 complex,allocatable :: a(:)
end type
type(ty04),pointer :: s04 => null()
type ty05
 character,allocatable :: a(:)
end type
type(ty05),pointer :: s05 => null()
type ty06
 integer*1,allocatable :: a(:)
end type
type(ty06),pointer :: s06 => null()
type ty07
 integer*2,allocatable :: a(:)
end type
type(ty07),pointer :: s07 => null()
type ty08
 integer*8,allocatable :: a(:)
end type
type(ty08),pointer :: s08 => null()
type ty09
 logical*1,allocatable :: a(:)
end type
type(ty09),pointer :: s09 => null()

if (associated(s01))print *,'err'
if (associated(s02))print *,'err'
if (associated(s03))print *,'err'
if (associated(s04))print *,'err'
if (associated(s05))print *,'err'
if (associated(s06))print *,'err'
if (associated(s07))print *,'err'
if (associated(s08))print *,'err'
if (associated(s09))print *,'err'
print *,'pass'
end
