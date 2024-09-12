type x
  integer  kind
  integer  len
end type
type (x)::v
v%kind=1
v%len =2
if (v%kind/=1) print *,101
if (v%len /=2) print *,102
if (v%kind%kind/=4) print *,103
if (v%len%kind /=4) print *,104
print *,'pass'
end
