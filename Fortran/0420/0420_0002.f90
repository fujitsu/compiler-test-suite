type x
  integer  kind
  integer  len
end type
type (x)::v
v%kind=1
v%len =2
if (v%kind/=1) print *,101
if (v%len /=2) print *,102
print *,'pass'
end
