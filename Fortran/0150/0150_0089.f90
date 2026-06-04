use iso_c_binding
integer,target::t
type(c_ptr)::a(2)
forall (k=1:2)
  a(k)=c_loc(t)
end forall
print *,'pass'
end
