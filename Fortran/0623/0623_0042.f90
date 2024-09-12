type t1
 real :: x, y
end type t1
type, extends(t1) ::t2
 real :: z
end type t2
type(t2) :: a
print *,'pass'
end
