 type x
  integer(4),dimension(4)::d1=1
  integer(4),dimension(5)::d2=1
  integer(4),dimension(2)::d3=3
 end type
 type(x)::z
print *,z%d1
print *,z%d2
print *,z%d3
end
