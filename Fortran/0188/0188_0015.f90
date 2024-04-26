  type :: t23456789
     integer :: nn
  end type

  type t1
     type(t23456789):: y
  end type 

  type, extends(t1) :: t2
     type(t23456789) :: x
  end type 

type(t23456789):: v1
type(t1       ):: v3
type(t2       ):: v4

v1%nn=1
v3%y%nn=3
v4%y%nn=4
v4%x%nn=5
if (v1%nn/=1) print *,201
if (v3%y%nn/=3) print *,203
if (v4%y%nn/=4) print *,204
if (v4%x%nn/=5) print *,205

print *,'pass'
end
