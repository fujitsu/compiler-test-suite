type x1
  integer ::v1
end type
type x2
 type(x1),pointer::v2
  integer ::v21
end type
type(x2),pointer::v3
type(x1),target::t

allocate(v3)
v3=x2(t,2)
if (v3%v21/=2)print *,'error'
print *,'pass'
end
