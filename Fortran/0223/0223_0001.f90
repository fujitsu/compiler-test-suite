TYPE, ABSTRACT :: d
  integer::x1
end type
type,extends(d)::e
  integer::x2
end type
type (e)::v
v%x1=1
v%x2=2
if (v%x1/=1) print *,1010
if (v%x2/=2) print *,1012
print *,'pass'
end

