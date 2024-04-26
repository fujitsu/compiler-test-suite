integer,allocatable::x(:)
allocate(x(2))
if (lbound(x,1)/=1)print *,1
print *,'pass'
end
