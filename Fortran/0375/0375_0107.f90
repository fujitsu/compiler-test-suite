type :: parent
  integer(kind=1),pointer :: i1
  integer(kind=2),pointer :: i2
  integer(kind=4),pointer :: i4
  integer(kind=8),pointer :: i8
end type

type,extends(parent) :: child1
  integer(kind=1),pointer :: i11
  integer(kind=2),pointer :: i22
  integer(kind=4),pointer :: i44
  integer(kind=8),pointer :: i88
end type

type,extends(child1) :: child2
  integer(kind=1),pointer :: i111
  integer(kind=2),pointer :: i222
  integer(kind=4),pointer :: i444
  integer(kind=8),pointer :: i888
end type

type (child1) :: chi1 = child1(parent(null(),null(),null(),null()),null(),null(),null(),null())
type (child2) :: chi2 = child2(child1(parent(null(),null(),null(),null()),null(),null(),null(),null()), &
                               null(),null(),null(),null())

if (associated(chi1%i11))print *,'fail'
if (associated(chi1%i22))print *,'fail'
if (associated(chi1%i44))print *,'fail'
if (associated(chi1%i88))print *,'fail'

if (associated(chi2%i111))print *,'fail'
if (associated(chi2%i222))print *,'fail'
if (associated(chi2%i444))print *,'fail'
if (associated(chi2%i888))print *,'fail'

print *,'pass'
end
