type :: parent
  integer(kind=1),pointer :: i1
end type

type,extends(parent) :: child1
  integer(kind=1),pointer :: i11
end type

type,extends(child1) :: child2
  integer(kind=1),pointer :: i111
end type

type (child2) :: chi2 = child2(child1(parent(null()),null()),null())
if (associated(chi2%i11))print *,'fail'
print *,'pass'

end
