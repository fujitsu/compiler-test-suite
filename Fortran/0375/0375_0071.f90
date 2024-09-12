type :: parent
  integer(kind=1) :: i1
  integer(kind=2) :: i2
  integer(kind=4) :: i4
  integer(kind=8) :: i8
end type

type,extends(parent) :: child1
  integer(kind=1) :: i11
  integer(kind=2) :: i22
  integer(kind=4) :: i44
  integer(kind=8) :: i88
end type

type,extends(child1) :: child2
  integer(kind=1) :: i111
  integer(kind=2) :: i222
  integer(kind=4) :: i444
  integer(kind=8) :: i888
end type

integer(kind=1),parameter :: i1max = z'7f'
integer(kind=2),parameter :: i2max = z'7fff'
integer(kind=4),parameter :: i4max = z'7fffffff'
integer(kind=8),parameter :: i8max = z'7fffffffffffffff'

type(child1) :: chi11 = child1(parent(i1max,i2max,i4max,i8max),i1max,i2max,i4max,i8max);
type(child2) :: chi22 = child2(child1(parent(i1max,i2max,i4max,i8max), &
                               i1max,i2max,i4max,i8max),i1max,i2max,i4max,i8max);

if (chi11%i1 .ne. i1max) print *,'ng1'
if (chi11%i2 .ne. i2max) print *,'ng2'
if (chi11%i4 .ne. i4max) print *,'ng4'
if (chi11%i8 .ne. i8max) print *,'ng8'

if (chi11%parent%i1 .ne. i1max) print *,'ng1'
if (chi11%parent%i2 .ne. i2max) print *,'ng2'
if (chi11%parent%i4 .ne. i4max) print *,'ng4'
if (chi11%parent%i8 .ne. i8max) print *,'ng8'

if (chi11%i11 .ne. i1max) print *,'ng11'
if (chi11%i22 .ne. i2max) print *,'ng22'
if (chi11%i44 .ne. i4max) print *,'ng44'
if (chi11%i88 .ne. i8max) print *,'ng88'

if (chi22%i1 .ne. i1max) print *,'ng1'
if (chi22%i2 .ne. i2max) print *,'ng2'
if (chi22%i4 .ne. i4max) print *,'ng4'
if (chi22%i8 .ne. i8max) print *,'ng8'

if (chi22%child1%i1 .ne. i1max) print *,'ng1'
if (chi22%child1%i2 .ne. i2max) print *,'ng2'
if (chi22%child1%i4 .ne. i4max) print *,'ng4'
if (chi22%child1%i8 .ne. i8max) print *,'ng8'

if (chi22%child1%parent%i1 .ne. i1max) print *,'ng1'
if (chi22%child1%parent%i2 .ne. i2max) print *,'ng2'
if (chi22%child1%parent%i4 .ne. i4max) print *,'ng4'
if (chi22%child1%parent%i8 .ne. i8max) print *,'ng8'

if (chi22%i11 .ne. i1max) print *,'ng1'
if (chi22%i22 .ne. i2max) print *,'ng2'
if (chi22%i44 .ne. i4max) print *,'ng4'
if (chi22%i88 .ne. i8max) print *,'ng8'

if (chi22%child1%i11 .ne. i1max) print *,'ng1'
if (chi22%child1%i22 .ne. i2max) print *,'ng2'
if (chi22%child1%i44 .ne. i4max) print *,'ng4'
if (chi22%child1%i88 .ne. i8max) print *,'ng8'

if (chi22%i111 .ne. i1max) print *,'ng1'
if (chi22%i222 .ne. i2max) print *,'ng2'
if (chi22%i444 .ne. i4max) print *,'ng4'
if (chi22%i888 .ne. i8max) print *,'ng8'

print *,'pass'
end
