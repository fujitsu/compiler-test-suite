module m1
  implicit none
  type :: t23456789
     integer :: n
  end type

  type type_x789
     integer :: n
  end type 

  type :: type_y789
     type(t23456789) :: x
     type(t23456789) :: y
     type(type_x789) :: z
  end type type_y789
  type :: type_z789
     type(t23456789) :: xx
     type(type_y789) :: yy
     type(type_x789) :: zz
  end type type_z789
  type :: type_w789
     type(t23456789) :: xxx
     type(type_y789) :: yyy
     type(type_z789) :: www
     type(type_x789) :: zzz
  end type type_w789
type(type_x789),allocatable:: vx
type(type_y789),allocatable:: vy
type(type_z789),allocatable:: vz
type(type_w789),allocatable:: vw
integer::n
end
use m1
implicit none
allocate( vx,vy,vz,vw)
vx%n=1
vy%x%n=1
vy%y%n=1
vy%z%n=1
vz%xx%n=1
vz%yy%x%n=1
vz%yy%y%n=1
vz%yy%z%n=1
vz%zz%n=1
vw%xxx%n=1
vw%yyy%x%n=1
vw%yyy%y%n=1
vw%yyy%z%n=1
vw%www%xx%n=1
vw%www%yy%x%n=1
vw%www%yy%y%n=1
vw%www%yy%z%n=1
vw%www%zz%n=1
vw%zzz%n=1

if (vx%n/=1) print *,901
if (vy%x%n/=1) print *,901
if (vy%y%n/=1) print *,901
if (vy%z%n/=1) print *,901
if (vz%xx%n/=1) print *,901
if (vz%yy%x%n/=1) print *,901
if (vz%yy%y%n/=1) print *,901
if (vz%yy%z%n/=1) print *,901
if (vz%zz%n/=1) print *,901
if (vw%xxx%n/=1) print *,901
if (vw%yyy%x%n/=1) print *,901
if (vw%yyy%y%n/=1) print *,901
if (vw%yyy%z%n/=1) print *,901
if (vw%www%xx%n/=1) print *,901
if (vw%www%yy%x%n/=1) print *,901
if (vw%www%yy%y%n/=1) print *,901
if (vw%www%yy%z%n/=1) print *,901
if (vw%www%zz%n/=1) print *,901
if (vw%zzz%n/=1) print *,901
print *,'pass'
end
