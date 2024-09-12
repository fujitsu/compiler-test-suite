 logical,parameter::t=.true.,f=.false.
 type x
  logical(4),dimension(4)::d1=t
  logical(4),dimension(4)::d2=t
 end type
 type(x)::z
print *,z%d1
print *,z%d2
end
