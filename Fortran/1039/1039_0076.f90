type x1
  integer ::v1
end type
type x2
 type(x1),pointer::v2
  integer ::v21
end type
type x3
 type(x2),pointer::v3
  integer ::v31
end type
type x4
 type(x3),pointer::v4
  integer ::v41
end type
type(x4),pointer::v5

allocate(v5)
allocate(v5%v4)
allocate(v5%v4%v3)
allocate(v5%v4%v3%v2)
v5%v41=1
v5%v4%v31=2
v5%v4%v3%v21=3
v5%v4%v3%v2%v1=4
if (v5%v41/=1)print *,'error-1'
if (v5%v4%v31/=2)print *,'error-2'
if (v5%v4%v3%v21/=3)print *,'error-3'
if (v5%v4%v3%v2%v1/=4)print *,'error-4'
print *,'pass'
end
