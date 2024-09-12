use,intrinsic::iso_c_binding
character(2),target::arg='ab'
type(c_ptr)::a
a=c_loc(arg(2:2))
print *,'pass'
end
