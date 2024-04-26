  type :: t23456789
     integer :: nn
  end type

  type :: y23456789
     integer :: ny
  end type

  type t1
     type(y23456789):: nt
  end type 

  type, extends(t1) :: t2
     type(t23456789) :: x
  end type 

type(t23456789):: v1
type(y23456789):: v2
type(t1       ):: v3
type(t2       ):: v4

v1%nn=1
v2%ny=2
v3%nt%ny=3
v4%nt%ny=4
v4%x%nn=5
if (v1%nn/=1) print *,201
if (v2%ny/=2) print *,202
if (v3%nt%ny/=3) print *,203
if (v4%nt%ny/=4) print *,204
if (v4%x%nn/=5) print *,205

print *,'pass'
end
