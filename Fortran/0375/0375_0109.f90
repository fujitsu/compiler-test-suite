type :: parent
  integer(kind=1) :: i1
end type

type,extends(parent) :: child1
  integer(kind=1) :: i11
end type

type,extends(child1) :: child2
  integer(kind=1) :: i111
end type

integer(kind=1),parameter :: i1max = z'7f'

type(child1) :: chi11 = child1(parent(i1max),i1max);
type(child2) :: chi22 = child2(child1(parent(i1max),i1max),i1max);

if (chi22%i111/=127)print *,'fail'
if (chi22%i11/=127)print *,'fail'
if (chi22%i1/=127)print *,'fail'
print *,'pass'
end
