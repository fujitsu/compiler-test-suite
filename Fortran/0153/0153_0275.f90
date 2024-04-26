  type x(k)
    integer,kind:: k
    integer(k):: x1
  end type
  type(x(4)) :: v1
  type(x(8)) :: v2
  v1%x1=1
  v2%x1=2
  if (v1%x1/=1) print *,101
  if (v2%x1/=2) print *,102
print *,'pass'
end
